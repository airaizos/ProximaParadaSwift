//
//  UIViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 28/3/22.
//

import Foundation
import UIKit

//TODO: Como hacerla una extensión??
extension UIViewController {
    static func create(_ viewController: UIViewController) -> UIViewController {
        return UIStoryboard(name: "\(viewController)", bundle: .main).instantiateViewController(withIdentifier: "\(viewController)") as! ViewController
    }
}
