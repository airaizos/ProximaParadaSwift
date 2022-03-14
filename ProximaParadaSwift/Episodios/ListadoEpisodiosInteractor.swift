//
//  ListadoEpisodiosInteractor.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import Foundation

class ListadoEpisodiosInteractor: ListadoEpisodiosInteractorContract {
    
    var urlPost = URL(string: "https://proximaparadaswift.dev/wp-json/wp/v2/posts")!
    var listadoEpisodiosProvider: ListadoEpisodiosProviderContract?
    weak var output: ListadoEpisodiosInteractorOutputContract?
    
    func fetchListadoEpisodios() {
        listadoEpisodiosProvider?.network(url: urlPost) { data in
            print(data)
           // self.output?.didFetch(postsTitle: data)
        }
    }
}
