//
//  ListadoEpisodiosContract.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import Foundation
import UIKit

protocol ListadoEpisodiosViewContract: UIViewController {
    var presenter: ListadoEpisodiosPresenterContract? { get set }
    func reloadData()
}

protocol ListadoEpisodiosPresenterContract: AnyObject {
    
    var view: ListadoEpisodiosViewContract? { get set }
    var interactor: ListadoEpisodiosInteractorContract? { get set }
    var numItems: Int { get }
    
    func cellViewModel(at indexPath: IndexPath) -> ListadoEpisodiosCellViewModel
    func viewDidLoad()
    func didSelectItem(at indexPath: IndexPath)
}


protocol ListadoEpisodiosInteractorContract: AnyObject {
    var output: ListadoEpisodiosInteractorOutputContract? { get set }
    func fetchListadoEpisodios()
    func loadListadoEpisodios()
}


protocol ListadoEpisodiosInteractorOutputContract: AnyObject {
   // func didFetch(postsTitle: [PostTitle])
    func didFetch(with result: [PostTitle])
    func didFetchFail(with result: ListadoProviderError)
    func loadListadoEpisodios()
}

protocol ListadoEpisodiosProviderContract: AnyObject {
    func fetchFromURLSession(completion: @escaping ([PostTitle]) -> ())
}

protocol ListadoEpisodiosWireframeContract: AnyObject {
    var view: UIViewController? { get set }
    func navigate(to post: PostTitle)
}
