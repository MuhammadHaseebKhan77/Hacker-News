//
//  webView.swift
//  Hacker news
//
//  Created by Apple on 07/06/2023.
//

import Foundation
import WebKit
import SwiftUI


struct webView:UIViewRepresentable{
    
    let urlString:String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView:WKWebView, context: Context) {
        if let safeString=urlString{
            if let url=URL(string: safeString){
                let request=URLRequest(url: url)
                uiView.load(request)
            }
                
        }
    }
}
