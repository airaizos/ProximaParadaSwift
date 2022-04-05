//
//  MensajeCollectionPresenter.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 5/4/22.
//

import Foundation

final class MensajeCollectionPresenter: MensajeCollectionPresenterContract {
    var view: MensajeCollectionViewControllerContract?
    
    var interactor: MensajeCollectionInteractorContract?
    
    var wireframe: MensajeCollectionWireframeContract?
    
    var numItems: Int {
        mensajes.count
    }
    
    private var mensajes = [EntityMessage]() {
        didSet {
            view?.reloadData()
        }
    }
    
    func cellViewModel(at indexPath: IndexPath) -> EntityMessage? {
        let item = mensajes[indexPath.row]
        return item.toMensajeCellViewModel
    }
    
    func didSelectItem(at indexPath: IndexPath) {
        let item = mensajes[indexPath.row]
        wireframe?.navigate(to: item)
        
    }
    
    func viewDidLoad() {
        fetchData()
    }
    
    
    private func fetchData() {
        //obtener datos de CoreData
    }
}
