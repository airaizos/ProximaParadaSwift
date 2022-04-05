//
//  FormularioContactoPreviewPresenter.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 2/4/22.
//

import Foundation

class  FormularioContactoPreviewPresenter: FormularioContactoPreviewPresenterContract {
    
    private var sendedData: String
    
    init(sendedData:String = "Sin Mensaje.") {
        self.sendedData = sendedData
    }
    
    var view: FormularioContactoPreviewViewControllerContract?
    
    func viewDidLoad() {
        //cargar página
    }
    
    var interactor: FormularioContactoPreviewInteractorContract?
    
    var wireframe: FormularioContactoPreviewWireframeContract?
    
    func didPressSend(_ viewModel: String) {
        interactor?.saveData(sendedData: viewModel, date: Date.now, id: UUID())
        wireframe?.navigateTo()
        
    }
}


