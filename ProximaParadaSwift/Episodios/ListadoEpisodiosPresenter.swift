//
//  ListadoEpisodiosPresenter.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import Foundation

class ListadoEpisodiosPresenter: ListadoEpisodiosPresenterContract {

    
    var numItems: Int {
        postsTitle.count
    }
    
    weak var view: ListadoEpisodiosViewContract?
    
    var interactor: ListadoEpisodiosInteractorContract?
    var wireframe: ListadoEpisodiosWireframeContract?
    var fetchPosts: ListadoEpisodiosProviderContract?
    
    private var postsTitle = [PostTitle]() {
        didSet {
            view?.reloadData()
        }
    }
    
  
    
    func viewDidLoad() {
        interactor?.output = self
        interactor?.fetchListadoEpisodios()
    }
    
    
    func cellViewModel(at indexPath: IndexPath) -> ListadoEpisodiosCellViewModel {
        let item = postsTitle[indexPath.row]
        
        return item.toEpisodioCellViewModel
        
    }
    
}


extension ListadoEpisodiosPresenter: ListadoEpisodiosInteractorOutputContract {
    func didFetch(postsTitle: [PostTitle]) {
        self.postsTitle.append(contentsOf: postsTitle)
    }
    
    
}
