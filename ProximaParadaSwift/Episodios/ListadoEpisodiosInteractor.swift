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
    
    func fetchListadoEpisodios() {
        listadoEpisodiosProvider?.fetchFromURLSession { data in
            self.output?.didFetch(with: data)
        }
       
    }
    
    func loadListadoEpisodios() {
        output?.didFetch(with: Bundle.main.decode("Episodios.json"))
    }
     
}

