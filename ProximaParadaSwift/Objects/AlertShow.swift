//
//  AlertShow.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 5/4/22.
//

import Foundation
import UIKit


struct AlertShow {
    let title: String
    let message: String
    let actionTitle: String
    
    init(title: String, message: String, actionTitle: String) {
        self.title = title
        self.message = message
        self.actionTitle = actionTitle
    }

    func showValidation() {
           let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: actionTitle, style: .default))
          
        //self.present(alert, animated: true)
    }
}


let alert = AlertShow(title: "¡Enviado!", message: "Te contestaré en cuanto pueda", actionTitle: "OK")





