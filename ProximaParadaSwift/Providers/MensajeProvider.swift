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
    
    func fetchData() {
        let context = contexto()
        let fetchRequest: NSFetchRequest<Message> = Message.fetchRequest()
        let order = NSSortDescriptor(key: "date", ascending: true)
        fetchRequest.sortDescriptors = [order]
   
        
      
        
    }
    
    
    //MARK: COMO llevo el resultado a Interactor?
    /*
    func getData(_ completion: @escaping (Result<[Message], ProviderError>) -> Void) {
        let context = contexto()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Message")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                let message = data.value(forKey: "message")
                let date  = data.value(forKey: "date")
                let id = data.value(forKey: "id")
                
              
            }
        } catch {
            let error = completion(.failure(.generic(error)))
        }
    }
    
    */
}
