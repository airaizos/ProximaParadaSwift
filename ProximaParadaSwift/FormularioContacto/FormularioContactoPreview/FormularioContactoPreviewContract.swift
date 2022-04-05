//
//  FormularioContactoPreviewContract.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 2/4/22.
//

import Foundation
import UIKit


protocol FormularioContactoPreviewViewControllerContract: AnyObject {
    
    var presenter: FormularioContactoPreviewPresenterContract? { get set }
    
    var viewModel: FormularioContactoViewModel? { get set }
    func viewDidLoad()
    
}

protocol FormularioContactoPreviewPresenterContract: AnyObject {
    
    var view: FormularioContactoPreviewViewControllerContract? { get set }
    
    func viewDidLoad()
    
    var interactor: FormularioContactoPreviewInteractorContract? { get set }
    
    var wireframe: FormularioContactoPreviewWireframeContract? { get set }
    
    func didPressSend(_ viewModel: String)
}

protocol FormularioContactoPreviewInteractorContract: AnyObject {
 
    var output: FormularioContactoPreviewInteractorOutputContract? { get set }
    
    func saveData(sendedData: String, date: Date, id: UUID)
}

protocol FormularioContactoPreviewInteractorOutputContract: AnyObject {
    
}

protocol FormularioContactoPreviewWireframeContract: AnyObject {
    
    var view: UIViewController? { get set }
    
    func navigateTo()
}
