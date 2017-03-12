//
//  SeenObjectViewController.swift
//  Tensorswift
//
//  Created by Morten Just Petersen on 3/11/17.
//  Copyright © 2017 Morten Just Petersen. All rights reserved.
//

import UIKit
import WebKit

class SeenObjectViewController: UIViewController {
    
    var urlToLoad:String!
    var webView:WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if urlToLoad == nil { dismiss(animated: true, completion: { 
            print("! Dismissed, no URL")
        })  }
        
        print("Seen Object. Loading url: \(urlToLoad)")
        
        webView = WKWebView(frame: view.frame)
        view = webView
//        view.addSubview(webView)
        
    
        webView.load(
                URLRequest(url: URL(string: urlToLoad!)!
                ))
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
