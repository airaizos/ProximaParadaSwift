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
    
}

protocol ListadoEpisodiosPresenterContract: AnyObject {
    
    var view: ListadoEpisodiosViewContract? { get set }
    var interactor: ListadoEpisodiosInteractorContract? { get set }
    
}


protocol ListadoEpisodiosInteractorContract: AnyObject {
    
}


protocol ListadoEpisodiosInteractorOutputContract: AnyObject {
    
}

protocol ListadoEpisodiosProviderContract: AnyObject {
    
}
