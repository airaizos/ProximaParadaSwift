//
//  FormularioContactoWireframe.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 22/3/22.
//

import Foundation
import UIKit

final class FormularioContactoWireframe:  FormularioContactoWireframeContract {
    var view: UIViewController?
    
    
    func navigate(to viewModel: FormularioContactoViewModel) {
        DispatchQueue.main.async {
            let viewController = FormularioContactoPreviewControllerBuilder().build(viewModel: viewModel.toFormularioContactoViewModel)
            
            if let navigationController = self.view?.navigationController {
                navigationController.pushViewController(viewController, animated: true)
            } else {
                self.view?.present(viewController,animated: true)
            }
        }
    }
}
