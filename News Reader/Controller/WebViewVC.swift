//
//  WebViewVC.swift
//  News Reader
//
//  Created by Vibhanshu Vaibhav on 28/09/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit
import WebKit

class WebViewVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    var url: String?
    
    func initialize(forURL url: String) {
        self.url = url
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: self.url!)
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
