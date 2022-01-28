//
//  PostData.swift
//  NewsApp SwiftUI
//
//  Created by Vishal Kamble on 23/01/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
    
}
