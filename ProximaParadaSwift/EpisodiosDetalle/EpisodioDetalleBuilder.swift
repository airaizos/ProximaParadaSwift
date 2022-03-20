//
//  EpisodioDetalleBuilder.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 20/3/22.
//

import Foundation
import UIKit

class EpisodioDetalleBuilder {
    func build() -> UIViewController {
        
        let viewController = EpisodioDetalleViewController.createFromStoryBoard()
        
        let fetchEpisodio = ListadoEpisodiosURLSessionProvider()
        let presenter = EpisodioDetallePresenter()
        let interactor = EpisodioDetalleInteractor()
    
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.fetchEpisodio = fetchEpisodio
        presenter.view = viewController
        interactor.listadoEpisodiosProvider = ListadoEpisodiosURLSessionProvider()
        return viewController
        
        
    }
}
