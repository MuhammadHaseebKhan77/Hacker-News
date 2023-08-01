//
//  NetworkManager.swift
//  Hacker news
//
//  Created by Apple on 07/06/2023.
//

import Foundation
class NetworkManager:ObservableObject{
   @Published var posts=[post]()
    func fetchData(){
        if let url=URL(string: "http://hn.algolia.com/api/v1/search?query=bar&restrictSearchableAttributes=url"){
            let session=URLSession(configuration: .default)
            let task=session.dataTask(with: url) { data, responce, error in
                if error==nil{
                    let decoder=JSONDecoder()
                    if let safeData=data{
                        do{
                          let results=try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts=results.hits
                            }
                          
                        } catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
