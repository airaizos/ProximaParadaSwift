//
//  FormularioContactoPreviewWireframe.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 5/4/22.
//

import Foundation
import UIKit

final class FormularioContactoPreviewWireframe: FormularioContactoPreviewWireframeContract {
    
    var view: UIViewController?
    
    func navigateTo() {
        DispatchQueue.main.async {
            let viewController = MensajesCollectionControllerBuilder().build()
            
            if let navigationController = self.view?.navigationController {
                navigationController.pushViewController(viewController, animated: true)
            } else {
                self.view?.present(viewController, animated: true)
            }
        }
    }
}
