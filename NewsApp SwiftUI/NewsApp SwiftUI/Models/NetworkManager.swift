//
//  NetworkManager.swift
//  NewsApp SwiftUI
//
//  Created by Vishal Kamble on 23/01/22.
//

import Foundation
class NetworkManager : ObservableObject{
    
    @Published var posts = [Post]()
    //    https://hn.algolia.com/api/v1/search?tags=front_page
    func fetchData (){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){ (data, response, error) in
                if  error ==  nil {
                    let jsonDecoder = JSONDecoder()
                    if let safeData = data{
                        do {
                            let postData = try jsonDecoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = postData.hits
                            }
                        } catch  {
                            print(error)
                        }
                        
                    }
                    
                }
            }
            task.resume()
        }
    }
}
