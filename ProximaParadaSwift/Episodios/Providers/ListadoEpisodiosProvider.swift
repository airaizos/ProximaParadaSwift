//
//  ListadoEpisodiosProvider.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import Foundation

class ListadoEpisodiosProvider: ListadoEpisodiosProviderContract {
    let url: URL
    var result: Data?
    
    init(url: URL) {
        self.url = url
    }
    
    func network(url: URL, callback: @escaping (Data) -> Void) {
        URLSession.shared.dataTask(with: url) {
            data, response, error in
            guard let data = data, let response = response as? HTTPURLResponse, error == nil else {
                
                if let error = error {
                    print("Error:  \(error)")
                }
                return
            }
            if response.statusCode == 200 {
             //   callback(data)
                
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
