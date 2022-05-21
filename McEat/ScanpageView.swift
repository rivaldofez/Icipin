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
    @State var timeRemaining = 100
    @State var isShow = false
    @State var prediction = "0"
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        //call UIKit VC
        
        ZStack{
            ScanPageCustomView(prediction: self.$prediction)
            
            VStack {
                Text(prediction)
                if(Float(prediction)! > 0.8 && timeRemaining > 0){
                   Text("Hello")
                }else{
                   Text("Tidak Hello")
                }
                Text("\(timeRemaining)")
            }
        }.onReceive(timer) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            }
        }
    }
}

protocol CustomDelegate {
    func didUpdateWithValue(_ value: String)
}

struct ScanPageCustomView: UIViewControllerRepresentable {
    @Binding var prediction: String
    
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
        
        func didUpdateWithValue(_ value: String) {
            parent.prediction = value
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
            
            self.updateIsShowValue(prediction: "\(food.confidence)")

        }]
    }


    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        setupVision()
        guard let pixelBuffer: CVPixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        try? VNImageRequestHandler(cvPixelBuffer: pixelBuffer, options: [:]).perform(self.requests)
    }
    
    func updateIsShowValue(prediction: String){
        customDelegate?.didUpdateWithValue(prediction)
    }
}
