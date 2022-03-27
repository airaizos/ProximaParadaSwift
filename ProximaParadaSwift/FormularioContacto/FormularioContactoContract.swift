//
//  FormularioContactoContract.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 22/3/22.
//

import Foundation
import UIKit

protocol FormularioContactoViewContract: UIViewController {
    var presenter: FormularioContactoPresenterContract? { get set }
    
    
    var alert: UIAlertController { get set }
    func showValidationFormularioContacto()
    func showErrorValidationFormularioContacto()
}

protocol FormularioContactoPresenterContract: AnyObject {
    
    var view: FormularioContactoViewContract? { get set }
    var interactor: FormularioContactoInteractorContract? { get set }
    var wireframe: FormularioContactoWireframeContract? { get set }
    
    func viewDidLoad()
    
    func didPressSend()
        
    func didUpdateName(_ name: String?)
    func didUpdateEmail(_ email: String?)
    func didUpdateMessage(_ message: String?)
}

protocol FormularioContactoInteractorContract: AnyObject {
    func saveFormularioContacto(formularioContactoModel: FormularioContactoModel)
}

protocol FormularioContactoWireframeContract: AnyObject {
    
    var view: UIViewController? { get set }
}


protocol FormularioContactoProviderContract: AnyObject {

}
