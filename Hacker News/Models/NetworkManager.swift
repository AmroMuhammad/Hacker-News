//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Amr Muhammad on 4/19/21.
//  Copyright © 2021 Amr Muhammad. All rights reserved.
//

import Foundation
class NetworkManager : ObservableObject{
    @Published var posts = [Post]()
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, urlResponse, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        }catch{
                            print(error)
                        }
                    }
                }else{
                    print("error")
                }
            }
            task.resume()
        }
    }
}
