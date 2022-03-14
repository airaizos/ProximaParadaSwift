//
//  Post.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import Foundation
import Metal

struct PostTitle: Identifiable, Codable {
    let id: Int
    let title: Rendered
    
    struct Rendered: Codable {
        let rendered: String
    }
}

