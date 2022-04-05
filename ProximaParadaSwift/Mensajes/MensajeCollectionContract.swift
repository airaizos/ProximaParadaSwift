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
   func cellViewModel(at indexPath: IndexPath) -> Message?
    
    
    
    func didSelectItem(at indexPath: IndexPath)
    
    func viewDidLoad()
    
}

protocol MensajeCollectionInteractorContract: AnyObject {
    
}

protocol MensajeCollectionWireframeContract: AnyObject {
    var view: UIViewController? { get set }
    
    func navigate(to item: Message)
}
