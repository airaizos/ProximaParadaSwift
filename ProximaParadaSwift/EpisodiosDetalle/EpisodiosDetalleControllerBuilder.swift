//
//  EpisodiosDetalleControllerBuilder.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 14/3/22.
//

import Foundation
import UIKit

class EpisodiosDetalleControllerBuilder {
    func build(viewModel: EpisodioViewModel) -> UIViewController {
        let viewController = EpisodioDetalleViewController.create()
        viewController.viewModel = viewModel
        
        return viewController
    }
}
