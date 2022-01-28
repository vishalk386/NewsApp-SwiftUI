//
//  WebView.swift
//  NewsApp SwiftUI
//
//  Created by Vishal Kamble on 23/01/22.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable {
    
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeSting = urlString {
            if let url = URL(string: safeSting){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
