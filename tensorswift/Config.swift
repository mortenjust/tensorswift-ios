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
 
    static var seeThisOpenThat = [
        "peanut"    : "https://google.com/search?q=peanut",
        "raisin"    : "https://google.com/search?q=raisin",
        "mm"        : "https://google.com/search?q=m and ms",
        "almond"    : "https://google.com/search?q=almond",
    ]
    
}
