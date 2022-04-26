//
//  ListadoFrasedelDiaContract.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 25/4/22.
//

import Foundation
import UIKit


protocol ListadoFraseDelDiaViewControllerContract {
    
    var presenter: ListadoFraseDelDiaPresenterContract? { get }
    func viewDidLoad()
    static func createFromStoryBoard() -> ListadoFraseDelDiaViewController
}

protocol ListadoFraseDelDiaPresenterContract {
    var view: ListadoFraseDelDiaViewController? { get }
    var interactor: ListadoFraseDelDiaInteractor? { get }
    var wireframe: ListadoFraseDelDiaWireframe? { get }
    func viewDidLoad()
}

protocol ListadoFraseDelDiaInteractorContract {
    
    var ListadoFraseDelDiaProvider: ListadoFraseDelDiaProviderContract? { get }
    
    func saveListadoFraseDelDia(ListadoFraseDelDiaModel: FraseDelDiaModel)
}

protocol ListadoFraseDelDiaWireframeContract {
    var view: UIViewController? { get }
    func navigateTo()
    
}

protocol ListadoFraseDelDiaProviderContract {
 
    func fetchListadoFraseDelDia()
    
}
