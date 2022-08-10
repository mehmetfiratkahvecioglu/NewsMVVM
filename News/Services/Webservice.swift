//
//  Webservice.swift
//  News
//
//  Created by Fırat Kahvecioğlu on 9.08.2022.
//

import Foundation

class Webservice{
    
    func getArticles(url: URL,completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url){ data, response, error in
             
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                print(data)
                
                let articlelist = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articlelist {
                    completion(articlelist?.articles)
                }
                print(articlelist?.articles as Any)
            }
            
            
        }.resume()
        
        
        
    }
}
