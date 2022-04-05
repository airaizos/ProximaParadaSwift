//
//  FormularioContactoPreviewInteractor.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 2/4/22.
//

import Foundation
import CoreData
import UIKit

class FormularioContactoPreviewInteractor: FormularioContactoPreviewInteractorContract {
    var output: FormularioContactoPreviewInteractorOutputContract?
    
    func contexto() -> NSManagedObjectContext {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        return delegate.persistentContainer.viewContext
    }
    
    func saveData(sendedData: String, date: Date, id: UUID) {
        let context = contexto()
        let entityMessage = NSEntityDescription.insertNewObject(forEntityName: "EntityMessage", into: context) as! EntityMessage
        entityMessage.message = sendedData
        entityMessage.date = Date.now
        entityMessage.id = UUID()
        
        do {
            try context.save()
            print("alerta: SI guardó")
        } catch let error as NSError {
            print("alerta: NO guardó: \(error)")
        }
    }
}
