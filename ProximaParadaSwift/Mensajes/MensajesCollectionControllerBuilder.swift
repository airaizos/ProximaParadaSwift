//
//  MensajesCollectionControllerBuilder.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 5/4/22.
//

import Foundation
import UIKit


final class MensajesCollectionControllerBuilder {
    func build() -> UIViewController {
        
        let viewController = MensajesCollectionViewController.createFromStoryboard()
        
        return viewController
    }
}
