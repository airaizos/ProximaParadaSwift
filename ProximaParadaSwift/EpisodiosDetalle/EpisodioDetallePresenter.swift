//
//  EpisodioDetallePresenter.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 20/3/22.
//

import Foundation

class EpisodioDetallePresenter: EpisodioDetallePresenterContract {
    var view: EpisodioDetalleViewContract?
    
    var interactor: EpisodioDetalleInteractorContract?
    
    var fetchEpisodio: ListadoEpisodiosProviderContract?
}
