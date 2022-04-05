//
//  FormularioContactoPresenter.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 22/3/22.
//

import Foundation

final class FormularioContactoPresenter: FormularioContactoPresenterContract {

    var view: FormularioContactoViewContract?
    
    var interactor: FormularioContactoInteractorContract?
    
    var wireframe: FormularioContactoWireframeContract?
    
    private var formularioContactoModel = FormularioContactoModel(name: nil, email: nil, message: nil)
    
    func viewDidLoad() {
        
    }
    
    func didPressSend() {
        if formularioContactoModel.isValidFormularioContacto {
            
             interactor?.saveFormularioContacto(formularioContactoModel: formularioContactoModel)
            showPreview()
           
          //esto mejor en el preview  view?.showValidationFormularioContacto()
            
        } else {
            view?.showErrorValidationFormularioContacto()
        }
    }
    func didUpdateName(_ name: String?) {
        formularioContactoModel.name = name
    }
    func didUpdateEmail(_ email: String?) {
        formularioContactoModel.email = email
    }
    func didUpdateMessage(_ message: String?) {
        formularioContactoModel.message = message
    }
    
    func showPreview() {
        wireframe?.navigate(to: formularioContactoModel.toFormularioContactoPreviewViewModel)
    }
    
}
