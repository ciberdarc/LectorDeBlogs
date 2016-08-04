//
//  DetailViewController.swift
//  LectorDeBlogs
//
//  Created by Alexis Araujo on 8/3/16.
//  Copyright © 2016 Alexis Araujo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    

    @IBOutlet weak var webview: UIWebView!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
//        Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let webview = self.webview {
                webview.loadHTMLString(detail.valueForKey("content")!.description, baseURL: nil)
            }
        }
            //Cargar una pagina html
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

