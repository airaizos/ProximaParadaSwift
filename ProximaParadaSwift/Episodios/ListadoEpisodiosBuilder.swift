//
//  ListadoEpisodiosBuilder.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import Foundation
import UIKit

class ListadoEpisodiosBuilder {
    func build() -> UIViewController {
        let viewController = ListadoEpisodiosViewController.createFromStoryBoard()
        let fetchPosts = ListadoEpisodiosURLSessionProvider()
        let presenter = ListadoEpisodiosPresenter()
        let interactor = ListadoEpisodiosInteractor()
        let wireframe = ListadoEpisodiosWireframe()
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.fetchPosts = fetchPosts
        presenter.view = viewController
        interactor.listadoEpisodiosProvider = ListadoEpisodiosURLSessionProvider()
        presenter.wireframe = wireframe
        wireframe.view = viewController
        
        return viewController
        
    }
}
