//
//  MensajeCollectionContract.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 5/4/22.
//

import Foundation
import UIKit


protocol MensajeCollectionViewControllerContract: AnyObject {
    var presenter: MensajeCollectionPresenterContract? { get set }
    func reloadData()
    
}

protocol MensajeCollectionPresenterContract: AnyObject {
    var view: MensajeCollectionViewControllerContract? { get set }
    var interactor: MensajeCollectionInteractorContract? { get set }
    var wireframe: MensajeCollectionWireframeContract? { get set }
    
    var numItems: Int { get }
//   func cellViewModel(at indexPath: IndexPath) -> EntityMessage
    
    
    
    func didSelectItem(at indexPath: IndexPath)
    
    func viewDidLoad()
    
}

protocol MensajeCollectionInteractorContract: AnyObject {
    
    var output: MensajeCollectionInteractorOutputContract? { get set }
    var listadoMensajesProvider: MensajeCollectionProviderContract? { get set }
    
    func fetchMensajes()
}


protocol MensajeCollectionInteractorOutputContract: AnyObject {
    func didFetch()
    func didFetchFail()
}

protocol MensajeCollectionWireframeContract: AnyObject {
    var view: UIViewController? { get set }
    
    func navigate(to item: EntityMessage)
}

protocol MensajeCollectionProviderContract: AnyObject {
    
    func fetchFrom()
}
