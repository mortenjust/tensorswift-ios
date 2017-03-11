//
//  ViewController.swift
//  Tensorswift
//
//  Created by Morten Just Petersen on 1/9/17.
//  Copyright © 2017 Morten Just Petersen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate, TensorDelegate {
    
    @IBOutlet weak var previewView: UIView!
    var bridge:TensorBridge = TensorBridge()
    

     private var videoCapture: VideoCapture!
        private var ciContext : CIContext!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let videoCapture = videoCapture else {return}
        videoCapture.startCapture()
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bridge.loadModel()
        bridge.delegate = self
        
        let spec = VideoSpec(fps: 3, size: CGSize(width: 640, height: 480))
        videoCapture = VideoCapture(cameraType: .back,
                                    preferredSpec: spec,
                                    previewContainer: previewView.layer)
     
        videoCapture.imageBufferHandler = {[unowned self] (imageBuffer, timestamp, outputBuffer) in
            self.bridge.runCNN(onFrame: imageBuffer)
        }
    }


    // this function receives a set of seen objects and their probabilities
    
    func tensorLabelListUpdated(_ recognizedObjects:[AnyHashable : Any]){
        
        print("#tensorlabellist updated with \(recognizedObjects.count) devices ")
        
        for seenObject in recognizedObjects {
            let label = String(describing: seenObject.key)
            let confidence = seenObject.value as! Double
            print("Just saw \(label) with \(confidence)")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

