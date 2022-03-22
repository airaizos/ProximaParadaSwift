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
}

protocol FormularioContactoPresenterContract: AnyObject {
    var view: FormularioContactoViewContract? { get set }
    var interactor: FormularioContactoInteractorContract? { get set }
    var wireframe: FormularioContactoWireframeContract? { get set }
    
    func viewDidLoad()
}

protocol FormularioContactoInteractorContract: AnyObject {
    
}

protocol FormularioContactoWireframeContract: AnyObject {
    
    var view: UIViewController? { get set }
}
