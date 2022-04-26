//
//  InitialControllerBuilder.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 15/3/22.
//

import Foundation
import UIKit

class InitialControllerBuilder {
    func build() -> UIViewController {
        let tabBarController = UITabBarController()
        let viewControllers = [buildListadoEpisodios(),buildFormularioContacto()]
        tabBarController.setViewControllers(viewControllers, animated: true)
        
        return tabBarController
    }
}

private extension InitialControllerBuilder {
    func buildListadoEpisodios() -> UINavigationController {
        let viewController = ListadoEpisodiosBuilder().build()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = UITabBarItem(title: "Episodios", image: UIImage(systemName: "dot.radiowaves.up.forward"), tag: 0)
        return navigationController
    }
}

private extension InitialControllerBuilder {
    func buildFormularioContacto() -> UINavigationController {
        let viewController = FormularioContactoBuilder().build()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = UITabBarItem(title: "Contacto", image: UIImage(systemName: "arrow.up.message"), tag: 1)
        return navigationController
    }
}

