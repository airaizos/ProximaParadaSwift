//
//  Mensaje.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 2/4/22.
//

import Foundation
import CoreData
import UIKit

class MensajeProvider {
    
    func contexto() -> NSManagedObjectContext {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        return delegate.persistentContainer.viewContext
    }
    
    func saveData(sendedData: String, date: Date, id: Int) {
        let context = contexto()
        let entityMessage = NSEntityDescription.insertNewObject(forEntityName: "Message", into: context) as! Message
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
