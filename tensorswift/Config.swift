//
//  Config.swift
//  Tensorswift
//
//  Created by Morten Just Petersen on 3/11/17.
//  Copyright © 2017 Morten Just Petersen. All rights reserved.
//

import UIKit

class Config {

    
    // Lower the confidence if the app doesn't recognize your objects easily
    // Increase if it doesn't recognize correctly
    
    static var confidence = 0.8
    
    
    // For every object you train, add a URL that should be opened when the app sees that object
 
    static var seeThisOpenThat:[String:String] = [
          "catch-all" : "https://google.com/search?q=%s%20cable"
        // the label will be added to the end of the catch-all string
        
        // Add your specific labels here if you need to:
        //        "peanut"    : "https://google.com/search?q=peanut",
    ]
    


// Labels in cable model. TODO: Add all these labels
    
//    110-female
//    110v
//    110v-charger
//    110v-grounded
//    110v-grounded-female
//    apple-laptop-converted
//    apple-laptop-converter
//    apple-magnet
//    apple-usb-charger
//    apple-usb-mini
//    eightshape-power
//    jack
//    jack-female
//    jack-to-ligthning
//    lightning
//    micro-usb
//    mini-usb
//    network-female
//    thunderbolt
//    usb
//    usb-c
//    usb-c-female
//    usb-female
//    
    
    
}
