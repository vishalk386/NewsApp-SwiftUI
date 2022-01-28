//
//  DetailView.swift
//  NewsApp SwiftUI
//
//  Created by Vishal Kamble on 23/01/22.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
       WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}



