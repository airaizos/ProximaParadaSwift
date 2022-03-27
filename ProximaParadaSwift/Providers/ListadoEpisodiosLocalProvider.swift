//
//  ListadoEpisodiosLocalProvider.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 15/3/22.
//

import Foundation


class ListadoEpisodiosLocalProvider: ListadoEpisodiosProviderContract {
    func fetchFromURLSession(completion: @escaping ([Episodio]) -> ()) {
        
        
    }
    
    let result: [Episodio] = Bundle.main.decode("EpisodiosJSON.json")
    
    
}
