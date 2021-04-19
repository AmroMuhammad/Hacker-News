//
//  WebView.swift
//  Hacker News
//
//  Created by Amr Muhammad on 4/19/21.
//  Copyright © 2021 Amr Muhammad. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView : UIViewRepresentable{
    
    let urlString:String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURL = urlString{
            if let url = URL(string: safeURL){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
