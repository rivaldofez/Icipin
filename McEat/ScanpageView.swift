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
        
        captureSession.startRunning()
        
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        view.layer.addSublayer(previewLayer)
        previewLayer.frame = view.frame
        
        
        let dataOutput = AVCaptureVideoDataOutput()
        dataOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "videoqueue"))
        captureSession.addOutput(dataOutput)
        
    }
    
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
//        print("Camera was able to capture a frame", Date())
        
        guard let pixelBuffer: CVPixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        guard let model = try? VNCoreMLModel(for: SqueezeNet().model) else {return}
        
        let request = VNCoreMLRequest(model: model) { finishedReq, err in
            guard let results = finishedReq.results as? [VNClassificationObservation] else {return}
            
            guard let firstObservation = results.first else {return}
            
            print(firstObservation.identifier, firstObservation.confidence)
        }
        
        try? VNImageRequestHandler(cvPixelBuffer: pixelBuffer, options: [:]).perform([request])
    }
}
