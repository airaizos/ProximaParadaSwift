//
//  Episodio.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 14/3/22.
// 

import Foundation

struct Episodio: Codable {
    let id: Int
    let title: Rendered
    let content: Rendered
    let guid: Rendered
//    let date: Date
    
    struct Rendered: Codable {
        let rendered: String
    }
}


struct EpisodioDetalleViewModel {
    let id: Int
    let title: String
    let content: String
    let guid: String
}
