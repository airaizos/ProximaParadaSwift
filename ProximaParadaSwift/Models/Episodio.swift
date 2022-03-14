//
//  Episodio.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 14/3/22.
//

import Foundation
import Metal

struct Episodio: Codable {
    let id: Int
    let title: Rendered
    let content: Rendered
    
    
    struct Rendered: Codable {
        let rendered: String
    }
}


