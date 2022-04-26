//
//  ListadoFrasedelDiaBuilder.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 25/4/22.
//

import Foundation
import UIKit

final class ListadoFraseDelDiaBuilder {
    
    func build() -> UIViewController {
        let viewController = ListadoFraseDelDiaViewController.createFromStoryBoard()
        let presenter = ListadoFraseDelDiaPresenter()
        let interactor = ListadoFraseDelDiaInteractor()
        let wireframe = ListadoFraseDelDiaWireframe()
        let listadoFrasedelDiaProvider = ListadoFraseDelDiaProvider()
        
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        interactor.ListadoFraseDelDiaProvider = listadoFrasedelDiaProvider
        
        return viewController
    }
}
