//
//  FormularioContactoPreviewControllerBuilder.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 28/3/22.
//

import Foundation
import UIKit

class FormularioContactoPreviewControllerBuilder {
    func build(viewModel: FormularioContactoViewModel) -> UIViewController {
        
        //no uso este viewModel
        
        let viewController = FormularioContactoPreviewViewController.createFromView() // create
        viewController.viewModel = viewModel
        
        let presenter = FormularioContactoPreviewPresenter()
        let interactor = FormularioContactoPreviewInteractor()
        let wireframe = FormularioContactoPreviewWireframe()
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.view = viewController
        presenter.wireframe = wireframe
        wireframe.view = viewController
        
        return viewController
    }
}
