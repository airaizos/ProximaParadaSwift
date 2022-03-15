//
//  ListadoEpisodiosURLSessionProvider.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import Foundation

class ListadoEpisodiosURLSessionProvider: ListadoEpisodiosProviderContract {
    
    let urlPost = URL(string: "https://proximaparadaswift.dev/wp-json/wp/v2/posts")!
    var result: Data?
    
    func network(_ callback: @escaping (Result<[Data], ListadoProviderError>) -> Void) {
        URLSession.shared.dataTask(with: urlPost) {
            data, response, error in
            guard let data = data, let response = response as? HTTPURLResponse, error == nil else {
                
                if let error = error {
                    print("Error:  \(error)")
                }
                return
            }
            if response.statusCode == 200 {
                print("Status Code: \(response.statusCode)")

                let decoder = JSONDecoder()
                
                if let postTitleJSON = try? decoder.decode([PostTitle].self, from: data) {
                     self.result = data
                    
                } 
                
            } else {
                print("Error red \(response.statusCode)")
            }
        }.resume()
        
    }
}
