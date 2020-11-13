//
//  ViewController.swift
//  Huaying-Train
//
//  Created by 李雪峰 on 2020/11/13.
//

// import UIKit
import WebKit

class ViewController: UIViewController {

    var wk:WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.wk = WKWebView(frame: self.view.frame)
        let theConfiguration = WKWebViewConfiguration()
        theConfiguration.userContentController = WKUserContentController() // 通过js与webview内容交互配置
        let frame = CGRect(x: 0,y : 0, width: self.view.frame.width, height:self.view.frame.height) //定位wk位置
        wk = WKWebView(frame: frame, configuration: theConfiguration)
        wk.allowsLinkPreview = true
        self.wk.load(NSURLRequest(url:NSURL(string:"https://www.huaying.info/Train/Login/index/authcode/16d902b3-3bfc-47a8-8dc6-081fdc183ea2.html")! as URL) as URLRequest)
        self.view.addSubview(self.wk)
    }
}
