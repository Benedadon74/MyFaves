//
//  DetailViewController.swift
//  MyFaves
//
//  Created by Bernard Slater on 9/25/19.
//  Copyright © 2019 Bernard Slater. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var WebSite: WKWebView!
    
    var weburl:String = ""
    
    func configureView() {
        
      if weburl != "" {
        
        // Update the user interface for the detail item.
       // if let detail = detailItem {
      //      if let label = detailDescriptionLabel {
      //          label.text = detail.description
       //     }
         if let myWebview = WebSite {
                       if let url = URL(string: weburl) {
                           let request = URLRequest(url: url)
                           myWebview.load(request)
                       }
                   }
               }else{
                   //Defaul Home Page Loads when App first runs
                   if let myWebview = WebSite {
                       title = "Home"
                       if let url = URL(string: "http://nationalmusclecars.com/") {
                           let request = URLRequest(url: url)
                           myWebview.load(request)
                       }
                   }
               }
           }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    //var detailItem: NSDate? {
   //     didSet {
            // Update the view.
  //          configureView()
     //   }
   // }


}

