//
//  FormularioContactoInteractor.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 22/3/22.
//

import Foundation

final class FormularioContactoInteractor: FormularioContactoInteractorContract {
    var formularioContactoProvider: FormularioContactoProvider?
    
    func saveFormularioContacto(formularioContactoModel: FormularioContactoModel) {
        formularioContactoProvider?.saveFormularioContacto(formularioContactoModel)
    }
}
