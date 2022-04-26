//
//  FraseDelDiaBuilder.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 25/4/22.
//

import Foundation
import UIKit


final class FraseDelDiaBuilder: FraseDelDiaBuilderContract
{
    func build() -> UIViewController {
        let viewController = FraseDelDiaViewController.createFromStoryboard()
        let presenter = FraseDelDiaPresenter()
        let interactor = FraseDelDiaInteractor()
        let wireframe = FraseDelDiaWireframe()
        let fraseDelDiaProvider = FraseDelDiaProvider()
     
        viewController.presenter = presenter
        presenter.interactor = interactor
        interactor.fraseDelDiaProvider = fraseDelDiaProvider
        presenter.view = viewController
        presenter.wireframe = wireframe
        return viewController
        
    }
}
