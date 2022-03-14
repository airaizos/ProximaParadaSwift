//
//  ListadoEpisodiosPresenter.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import Foundation

class ListadoEpisodiosPresenter: ListadoEpisodiosPresenterContract {
    
    weak var view: ListadoEpisodiosViewContract?
    
    var interactor: ListadoEpisodiosInteractorContract?
    
    private var postsTitle = [PostTitle]() {
        didSet {
            view?.reloadData()
        }
    }
    
    var numItems: Int {
        postsTitle.count
    }
    
    func viewDidLoad() {
        interactor?.output = self
        interactor?.fetchListadoEpisodios()
    }
    
    
    func cellViewModel(at indexPath: IndexPath) -> ListadoEpisodiosCellViewModel {
        let item = postsTitle[indexPath.row]
        
    }
    
}


extension ListadoEpisodiosPresenter: ListadoEpisodiosInteractorOutputContract {
    func didFetch(postsTitle: [PostTitle]) {
        self.postsTitle.append(contentsOf: postsTitle)
    }
    
    
}
