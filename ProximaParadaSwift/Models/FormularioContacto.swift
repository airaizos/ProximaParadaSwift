//
//  FormularioContacto.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 25/3/22.
//

import Foundation

struct FormularioContactoModel: Codable {
    var name: String?
    var email: String?
    var message: String?
}

struct FormularioContactoViewModel {
    let sendedData: String
}

extension FormularioContactoModel {
    func validate(field: String?) -> Bool {
        guard let field = field else {
            return false
        }
        return !field.isEmpty
    }
    
    var isValidName: Bool {
        validate(field: name)
    }
    var isValidEmail: Bool {
        validate(field: email)
    }
    var isValidFormularioContacto: Bool {
        isValidName && isValidEmail
    }
    var toFormularioContactoViewModel:FormularioContactoViewModel {
        return FormularioContactoViewModel(sendedData: "\(message ?? "No message") \n \(name ?? "")\n\(email ?? "")")
    }
}
