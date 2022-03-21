//
//  ListadoEpisodiosWireframe.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 14/3/22.
//

import Foundation
import UIKit

class ListadoEpisodiosWireframe: ListadoEpisodiosWireframeContract {
    var view: UIViewController?
    
    func navigate(to post: Episodio) {
        DispatchQueue.main.async {
            let viewController = EpisodiosDetalleControllerBuilder().build(viewModel: post.toEpisodioDetalleViewModel )
            
            if let navigationController = self.view?.navigationController {
                navigationController.pushViewController(viewController, animated: true)
            } else {
                self.view?.present(viewController, animated: true)
            }
        }
    }
}
