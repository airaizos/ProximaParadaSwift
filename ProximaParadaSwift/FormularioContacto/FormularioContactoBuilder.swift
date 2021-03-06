//
//  FormularioContactoBuilder.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 22/3/22.
//

import Foundation
import UIKit

final class FormularioContactoBuilder {
    func build() -> UIViewController {
        
        let viewController = FormularioContactoViewController.createFromStoryBoard()
        let presenter = FormularioContactoPresenter()
        let interactor = FormularioContactoInteractor()
        let wireframe = FormularioContactoWireframe()
        let formularioProvider = FormularioContactoProvider()
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        interactor.formularioContactoProvider = formularioProvider
        presenter.view = viewController
        presenter.wireframe = wireframe
        wireframe.view = viewController
        
        return viewController
    }
}
