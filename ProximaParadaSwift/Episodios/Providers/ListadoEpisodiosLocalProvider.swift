//
//  ListadoEpisodiosLocalProvider.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 15/3/22.
//

import Foundation


class ListadoEpisodiosLocalProvider: ListadoEpisodiosProviderContract {
    func network(_ callback: @escaping (Result<[Data], ListadoProviderError>) -> Void) {
        
        
    }
    
    let result: [PostTitle] = Bundle.main.decode("EpisodiosJSON.json")
    
    
}
