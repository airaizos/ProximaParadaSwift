//
//  setTitle.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 24/3/22.
//

import Foundation
import UIKit

extension UITextField {
    func titulo(texto: String) -> String {
        NSLocalizedString(texto, comment: "")
    }
}
