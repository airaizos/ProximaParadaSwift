//
//  EpisodioDetalleContract.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 20/3/22.
//

import Foundation
import UIKit

protocol EpisodioDetalleViewContract: UIViewController {
    var presenter: EpisodioDetallePresenterContract? { get set }
}


protocol EpisodioDetallePresenterContract: AnyObject {
    
    var view: EpisodioDetalleViewContract? { get set }
    var interactor: EpisodioDetalleInteractorContract? { get set }
}

protocol EpisodioDetalleInteractorContract: AnyObject {
    var output: EpisodioDetalleInteractorOutputContract? { get set }
    var listadoEpisodiosProvider: ListadoEpisodiosProviderContract? { get set }

}

protocol EpisodioDetalleInteractorOutputContract {
    
    func didFetch(with result: [Episodio])
    
    func didFetchFail(with result: ListadoProviderError)
}
