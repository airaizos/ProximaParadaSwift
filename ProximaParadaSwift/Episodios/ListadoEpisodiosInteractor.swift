//
//  ListadoEpisodiosInteractor.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import Foundation

class ListadoEpisodiosInteractor: ListadoEpisodiosInteractorContract {
        
    var listadoEpisodiosProvider: ListadoEpisodiosProviderContract?
    weak var output: ListadoEpisodiosInteractorOutputContract?
    
    func fetchListadoEpisodios(with result: Result<[PostTitle], Error>) {
      
        switch result {
        case .success(let postsTitle): output?.didFetch(with: postsTitle)
        case .failure: output?.
            }
        })
    }
}
