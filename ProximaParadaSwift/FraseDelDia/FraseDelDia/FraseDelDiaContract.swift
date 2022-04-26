//
//  FraseDelDiaContract.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 25/4/22.
//

import Foundation
import UIKit


protocol FraseDelDiaViewControllerContract {
    
    var presenter: FraseDelDiaPresenterContract? { get set }
    func viewDidLoad()
    func createFromStoryboard() -> FraseDelDiaViewController
    
}

protocol FraseDelDiaPresenterContract {
    
    var view: FraseDelDiaViewControllerContract? { get set }
    var interactor: FraseDelDiaInteractorContract? { get set }
    var wireframe: FraseDelDiaWireframeContract? { get set }
    
    func viewDidLoad()
}

protocol FraseDelDiaInteractorContract {
    
    var fraseDelDiaProvider: FraseDelDiaProviderContract? { get set }
    
    func saveCommentsDayPhrase(commentsModel: FraseDelDiaModel)
}

protocol FraseDelDiaProviderContract {
    //JSON //filemanager // coredata
    
    func saveDayPhraseComments()
    
    func fetchDayPhraseComments()
    
}

protocol FraseDelDiaWireframeContract {
    
    var view: UIViewController? { get set }
    func navigateTo()
    
}

protocol FraseDelDiaBuilderContract {
    func build() -> UIViewController
}

