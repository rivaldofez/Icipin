//
//  ScanpageView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 17/05/22.
//

import SwiftUI
import AVKit
import Vision

struct ScanpageView: View {
    @State var questItem: QuestItem
    @State var timeRemaining = 15
    @State var isShow = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var showVerifiedPage = false
    @State var showFailedPage = false
    @State var failedPage = false
    @State var predict : Predict? = nil
    let userDefaults = UserDefaults.standard

    var body: some View {
        //call UIKit VC
        ZStack{
            ScanPageCustomView(predict: self.$predict)
            VStack {
                
                HStack{
                    Text("Scan dalam : \(timeRemaining)")
                        .font(.system(.title2))
                        .foregroundColor(.black)
                        .padding(10)
                        .background(CustomColor.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }.padding(.top, 50)
                NavigationLink(destination: FailedQuestPage(), isActive: self.$showFailedPage){
                }
                .onReceive(timer){_ in
                    if(timeRemaining == 0){
                        self.timer.upstream.connect().cancel()
                        self.showFailedPage = true
                        self.showVerifiedPage = false
                    }
                }
                
                Spacer()
                Text(predict == nil ? "Gerakan Kamera Ke Makanan" : "Makanan Ditemukan!")
                    .font(.system(.title3).bold())
                    .foregroundColor(CustomColor.white)
                    .frame(width: UIScreen.main.bounds.width, height: 70)
                    .background(Corners(color: CustomColor.primary, tl: 20, tt: 20, bl: 0, bt: 0))
                    .onReceive(timer){_ in
                        if(timeRemaining > 0){
                            timeRemaining -= 1
                        }
                    }
                
                NavigationLink(destination: VerifiedQuestView(questItem: questItem), isActive: self.$showVerifiedPage){
                }
                .onReceive(timer){_ in
                    if(predict?.confidence ?? 0 > 0.7 && predict?.label == questItem.labelML && timeRemaining < 12){
                        let fetchDict = userDefaults.object(forKey: "dictQuest") as? [String:Bool]
                        var updateDict = [String:Bool]()
                        fetchDict?.forEach{
                            if($0.key == questItem.labelML){
                                updateDict[$0.key] = true
                            }else{
                                updateDict[$0.key] = $0.value
                            }
                        }
                        
                        userDefaults.set(updateDict, forKey: "dictQuest")
                        self.showVerifiedPage = true
                        self.failedPage = false
                        self.timer.upstream.connect().cancel()
                        
                    }
                }
            }
            Image("scan_placeholder")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.gray.opacity(0.5))
            
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

protocol CustomDelegate {
    func didUpdateWithValue(_ value: Predict?)
}

struct ScanPageCustomView: UIViewControllerRepresentable {
    @Binding var predict : Predict?
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = ScanPageViewController()
        vc.customDelegate = context.coordinator
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(customView: self)
    }
    
    class Coordinator: NSObject, CustomDelegate {
        var parent: ScanPageCustomView
        
        init(customView: ScanPageCustomView){
            self.parent = customView
        }
        
        func didUpdateWithValue(_ value: Predict?) {
            parent.predict = value
        }
    }
}


class ScanPageViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {
    var customDelegate: CustomDelegate?
    private var requests = [VNRequest]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //here to start the camera
        let captureSession = AVCaptureSession()
        guard let captureDevice = AVCaptureDevice.default(for: .video) else {
            return
        }
        guard let input = try? AVCaptureDeviceInput(device: captureDevice) else { return }

        captureSession.addInput(input)

        captureSession.sessionPreset = .photo
        captureSession.sessionPreset = .vga640x480
        captureSession.startRunning()

        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        view.layer.addSublayer(previewLayer)
        previewLayer.frame = view.frame


        let dataOutput = AVCaptureVideoDataOutput()
        if(captureSession.canAddOutput(dataOutput)){
            captureSession.addOutput(dataOutput)
            dataOutput.alwaysDiscardsLateVideoFrames = true
            dataOutput.videoSettings = [kCVPixelBufferPixelFormatTypeKey as String: Int(kCVPixelFormatType_420YpCbCr8BiPlanarFullRange)]
            dataOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "VideoDataOutput", qos: .userInitiated, attributes: [], autoreleaseFrequency: .workItem))
        }

    }
    
    func setupVision(){
        let model: McEatDetector = {
            do {
                let config = MLModelConfiguration()
                return try McEatDetector(configuration: config)
            } catch {
                print("error")
                fatalError("Couldn't create detector")
            }
        }()

        guard let vnModel = try? VNCoreMLModel(for: model.model) else {return}

        self.requests = [VNCoreMLRequest(model: vnModel) { finishedReq, err in
            guard let results = finishedReq.results as? [VNRecognizedObjectObservation] else {return}
            guard let firstResult = results.first else {return}

            guard let food = firstResult.labels.first else {return}
            
//            self.updateIsShowValue(prediction: "\(food.confidence)")
//            self.bindData(predict: [food.identifier: food.confidence])
            self.bindData(predict: Predict(label: food.identifier, confidence: food.confidence))

        }]
    }


    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        setupVision()
        guard let pixelBuffer: CVPixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        try? VNImageRequestHandler(cvPixelBuffer: pixelBuffer, options: [:]).perform(self.requests)
    }
    
    func bindData(predict: Predict?){
        customDelegate?.didUpdateWithValue(predict)
    }
}
