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
    var numItems: Int { get set }
    
}


protocol ListadoEpisodiosInteractorContract: AnyObject {
    var output: ListadoEpisodiosInteractorOutputContract? { get set }
    func fetchListadoEpisodios()
}


protocol ListadoEpisodiosInteractorOutputContract: AnyObject {
    func didFetch(postsTitle: [PostTitle])

}

protocol ListadoEpisodiosProviderContract: AnyObject {
    func network(url: URL, callback: @escaping (Data) -> Void)
}

protocol ListadoEpisodiosWireframeContract: AnyObject {
    var view: UIViewController? { get set }
    func navigate(to post: PostTitle)
}
