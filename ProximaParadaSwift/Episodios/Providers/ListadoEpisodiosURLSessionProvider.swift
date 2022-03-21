//
//  ListadoEpisodiosURLSessionProvider.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import Foundation

class ListadoEpisodiosURLSessionProvider: ListadoEpisodiosProviderContract {
    
    func fetchFromURLSession(completion: @escaping ([Episodio]) -> ()) {
        guard let urlPost = URL(string: "https://proximaparadaswift.dev/wp-json/wp/v2/posts?per_page=100") else { return }
        
        URLSession.shared.dataTask(with: urlPost) {
            data, _, _ in
            guard let data = data else { return }
            
            do {
                let json = try JSONDecoder().decode([Episodio].self, from: data)
                DispatchQueue.main.async {
                    completion(json)
                    print("Descarga de datos correcta")
                }
            } catch let error as NSError {
                print("Error al descargar datos \(error.localizedDescription)")
            }
        }.resume()
        
    }
}
