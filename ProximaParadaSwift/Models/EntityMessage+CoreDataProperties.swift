//
//  EntityMessage+CoreDataProperties.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 5/4/22.
//
//

import Foundation
import CoreData


extension EntityMessage {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<EntityMessage> {
        return NSFetchRequest<EntityMessage>(entityName: "EntityMessage")
    }

    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var message: String?

}

extension EntityMessage : Identifiable {

}
