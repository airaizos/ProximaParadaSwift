//
//  ListadoEpisodiosWireframe.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 14/3/22.
//

import Foundation


class ListadoEpisodiosWireframe: ListadoEpisodiosWireframeContract {
    var view: UIViewController?
    
    func navigate(to post: PostTitle) {
        DispatchQueue.main.async {
            let viewController = EpisodiosDetalleControllerBuilder().build(viewModel: post.)
        }
    }
    
    
}
