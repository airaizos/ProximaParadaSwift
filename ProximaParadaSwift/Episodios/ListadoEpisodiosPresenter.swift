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
        postsTitle = Bundle.main.decode("Episodios.json")
        
    }
    
    
    func cellViewModel(at indexPath: IndexPath) -> ListadoEpisodiosCellViewModel {
        let item = postsTitle[indexPath.row]
        
        return item.toEpisodioCellViewModel
        
    }
    
}


extension ListadoEpisodiosPresenter: ListadoEpisodiosInteractorOutputContract {
    func loadListadoEpisodios() {
        
    }
    
    func didFetchFail(with result: ListadoProviderError) {
        print("Error")
    }
    
    func didFetch(with result: [PostTitle]) {
        self.postsTitle.append(contentsOf: postsTitle)
    }
    
    
}
