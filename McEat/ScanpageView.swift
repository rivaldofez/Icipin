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
    var body: some View {
        //call UIKit VC
        MainVCView()
    }
}

struct ScanpageView_Previews: PreviewProvider {
    static var previews: some View {
        ScanpageView()
    }
}


//create bridge SwiftUI and UIKit
struct MainVCView: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        //create view controller object
        return ScanpageViewController()
    }
}


// create view controller
class ScanpageViewController: UIViewController,  AVCaptureVideoDataOutputSampleBufferDelegate {
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
        guard let model = try? VNCoreMLModel(for: McEatDetector().model) else {return}
        
        self.requests = [VNCoreMLRequest(model: model) { finishedReq, err in
            guard let results = finishedReq.results as? [VNRecognizedObjectObservation] else {return}
            
//            guard let firstObservation = results else {return}
            guard let hasil = results.first else {return}
            
            guard let food = hasil.labels.first else {return}
            print("\(food.identifier) = \(food.confidence)")
            
            
//            print(firstObservation.identifier, firstObservation.confidence)
        }]
    }
    
    
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
//        print("Camera was able to capture a frame", Date())
        setupVision()
        guard let pixelBuffer: CVPixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        
        try? VNImageRequestHandler(cvPixelBuffer: pixelBuffer, options: [:]).perform(self.requests)
    }
}
