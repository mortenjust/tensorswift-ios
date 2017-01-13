//
//  ViewController.swift
//  Tensorswift
//
//  Created by Morten Just Petersen on 1/9/17.
//  Copyright © 2017 Morten Just Petersen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {
    
    @IBOutlet weak var previewView: UIView!
    
//    AVCaptureVideoPreviewLayer *previewLayer;
//    AVCaptureVideoDataOutput *videoDataOutput;
//    dispatch_queue_t videoDataOutputQueue;
//    AVCaptureStillImageOutput *stillImageOutput;
//    UIView *flashView;
//    UIImage *square;
//    BOOL isUsingFrontFacingCamera;
//    AVSpeechSynthesizer *synth;

//    var session = AVCaptureSession()
//    var previewLayer:AVCaptureVideoPreviewLayer!
//    var videoDataOutput:AVCaptureVideoDataOutput!
//    var videoDataOutputQueue:DispatchQueue!
//    var stillImageOutput:AVCapturePhotoOutput! // AVCapturePhotoOutput from ios10
//    var isUsingFrontFacingCamera:Bool!
//  var AVCaptureStillImageIsCapturingStillImageContext = "AVCaptureStillImageIsCapturingStillImageContext"
    
     private var videoCapture: VideoCapture!
        private var ciContext : CIContext!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let videoCapture = videoCapture else {return}
        videoCapture.startCapture()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        let spec = VideoSpec(fps: 3, size: CGSize(width: 1280, height: 720))
        videoCapture = VideoCapture(cameraType: .back,
                                    preferredSpec: spec,
                                    previewContainer: previewView.layer)
     
        videoCapture.imageBufferHandler = {[unowned self] (imageBuffer, timestamp, outputBuffer) in
        //    let ciImage = CIImage(cvPixelBuffer: imageBuffer)
            
           
            // run cnn on pixelbuffer frame
            
            
            
           
            print("we havea  buffer")
        }

        
    }
    
    
//    func setupAVCapture(){
//        
//        if UIDevice.current.userInterfaceIdiom == .phone {
//            session.sessionPreset = AVCaptureSessionPreset640x480
//        } else {
//            session.sessionPreset = AVCaptureSessionPresetPhoto
//        }
//        
//        let devices = AVCaptureDevice.devices()
//        var device:AVCaptureDevice!
//        
//        // discover devices
//        let deviceDiscoverySession = AVCaptureDeviceDiscoverySession(deviceTypes: [.builtInDualCamera, .builtInTelephotoCamera, .builtInWideAngleCamera], mediaType: AVMediaTypeVideo, position: .back)
//        
//        for device in (deviceDiscoverySession?.devices)! {
//              if(device.position == AVCaptureDevicePosition.back){
//                do {
//                    let deviceInput = try AVCaptureDeviceInput(device: device)
//                    isUsingFrontFacingCamera = false
//                    if session.canAddInput(deviceInput) {
//                        session.addInput(deviceInput)
//                    }
//                    stillImageOutput = AVCapturePhotoOutput()
//                    
//                    if session.canAddOutput(stillImageOutput) {
//                        session.addOutput(stillImageOutput)
//                    }
//                    
//                    let videoDataOutput = AVCaptureVideoDataOutput()
//                    videoDataOutput.videoSettings = [kCVPixelBufferPixelFormatTypeKey as AnyHashable:kCVPixelFormatType_32BGRA]
//                    videoDataOutput.alwaysDiscardsLateVideoFrames = true
//                    
//                    videoDataOutputQueue = DispatchQueue(label: "VideoDataOutputQueue")
//                    videoDataOutput.setSampleBufferDelegate(self, queue: videoDataOutputQueue)
//                    
//                    if session.canAddOutput(videoDataOutput){
//                        session.addOutput(videoDataOutput)
//                    }
//                    
////                    videoDataOutput.connection(withMediaType: AVMediaTypeVideo).isEnabled = true
//                    
//                    previewLayer = AVCaptureVideoPreviewLayer(session: session)
//                    previewLayer.backgroundColor = UIColor.black.cgColor
//                    
//                    previewLayer.videoGravity = AVLayerVideoGravityResizeAspect
//                    
//                    let rootLayer = CALayer(layer: previewLayer)
//                    rootLayer.masksToBounds = true
//                    previewLayer.frame = rootLayer.bounds
//                    rootLayer.addSublayer(previewLayer)
//                    
//                    session.startRunning()
//                } catch {
//                    print("There was an errrrz setting up AVCaptureDeviceInput")
//                    
//                    return
//                }
//              } else {
//                print("couldn't find a back camera")
//            }
//        }
//    }
//    
//    func teardownAVCapture(){
//        // release the queue?
//        previewLayer.removeFromSuperlayer()
//        
//    }
    
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

