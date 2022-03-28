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
        
        let viewController = FormularioContactoPreviewViewController.create()
        viewController.viewModel = viewModel
        
        return viewController
    }
}
