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
    @State var showVarifiedPage = false
    @State var failedPage = false
    @State var predict : Predict? = nil
    
    
    var body: some View {
        //call UIKit VC
        ZStack{
            ScanPageCustomView(predict: self.$predict)
            VStack {
//                Text(prediction)
//                if(Float(prediction)! > 0.8 && timeRemaining > 0){
//                   Text("Hello")
//                }else{
//                   Text("Tidak Hello")
//                }
//                Text("\(timeRemaining)")
                

                Text(predict?.label ?? "")
                Text("\(predict?.confidence ?? 0.0)")
                    
                
                Spacer()
                Text("Initializing")
                    .font(.system(.title3).bold())
                    .foregroundColor(CustomColor.white)
                    .frame(width: UIScreen.main.bounds.width, height: 70)
                    .background(Corners(color: CustomColor.primary, tl: 20, tt: 20, bl: 0, bt: 0))
                    .onReceive(timer){_ in
                        if(timeRemaining > 0){
                            timeRemaining -= 1
                        }
                    }
                
                NavigationLink(destination: VerifiedQuestView(), isActive: self.$showVarifiedPage){
                }
                .onReceive(timer){_ in
                    if(predict?.confidence ?? 0 > 0.9 && predict?.label == questItem.labelML && timeRemaining < 10){
                        self.showVarifiedPage = true
                        print("Verified \(showVarifiedPage)")
                    }else if(timeRemaining == 0){
                        self.showVarifiedPage = false
                        print("Not Verified")
                    }
                }
                
                
                
            }
            
        }.edgesIgnoringSafeArea(.bottom)
//        .onReceive(timer) { _ in
//            if timeRemaining > 0 {
//                timeRemaining -= 1
//            }
//        }
    }
    
    
    func validate(){
        if(predict?.confidence ?? 0 > 0.9 && predict?.label == questItem.labelML){
            self.showVarifiedPage = true
        }else{
            self.showVarifiedPage = false
        }
    }
    
}

protocol CustomDelegate {
    func didUpdateWithValue(_ value: Predict?)
}

struct ScanPageCustomView: UIViewControllerRepresentable {
//    @Binding var prediction: String
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
//            parent.prediction = value
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
