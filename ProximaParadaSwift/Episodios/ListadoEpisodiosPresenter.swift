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
    
    private var postsTitle = [Episodio]() {
        didSet {
            view?.reloadData()
        }
    }
    
  
    
    func viewDidLoad() {
        interactor?.output = self
        fetchData()
      //  postsTitle = Bundle.main.decode("Episodios.json")
        
    }
    
    
    func cellViewModel(at indexPath: IndexPath) -> EpisodiosCellViewModel {
        let item = postsTitle[indexPath.row]
        
        return item.toEpisodioCellViewModel
        
    }
    
    private func fetchData() {
   //     interactor?.fetchListadoEpisodios()
        fetchPosts?.fetchFromURLSession(completion: { data in
            self.postsTitle = data
        })
    }
    
    func didSelectItem(at indexPath: IndexPath) {
        let item = postsTitle[indexPath.row]
        wireframe?.navigate(to: item)
    }
    
}


extension ListadoEpisodiosPresenter: ListadoEpisodiosInteractorOutputContract {
    func loadListadoEpisodios() {
        
    }
    
    func didFetchFail(with result: ListadoProviderError) {
        print("Error")
    }
    
    func didFetch(with result: [Episodio]) {
        self.postsTitle.append(contentsOf: postsTitle)
    }
    
    
}
