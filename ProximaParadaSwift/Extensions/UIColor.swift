//
//  UIColor.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 30/3/22.
//

import Foundation
import UIKit

//TODO: No funciona ¿ como se hace?
enum paleta {
    case backgroundPrimary, backgroundSecondary, textPrimary, textSecondary, textTertiary
}

extension UIColor {
    func colores(paleta: paleta) -> UIColor {
        switch paleta {
            
        case .backgroundPrimary:
            return UIColor(named: "backgroundPrimary")!
        case .backgroundSecondary:
            return UIColor(named: "backgroundSecondary")!
        case .textPrimary:
            return UIColor(named: "textPrimary")!
        case .textSecondary:
            return UIColor(named: "textSecondary")!
        case .textTertiary:
            return UIColor(named: "textTertiary")!
        }
    }
}
