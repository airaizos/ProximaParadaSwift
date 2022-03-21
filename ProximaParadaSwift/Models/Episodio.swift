//
//  Post.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import Foundation
import Metal

struct Episodio: Identifiable, Codable {
    let id: Int
    let title: Rendered
    let guid: Rendered
    let content: Rendered
    
    struct Rendered: Codable {
        let rendered: String
    }
}

extension Episodio {
 
    var toEpisodioCellViewModel: EpisodiosCellViewModel {
        
        EpisodiosCellViewModel(id: id, title: title.rendered, content: content.rendered, guid: guid.rendered)
    }
    
    var toEpisodioDetalleViewModel: EpisodioDetalleViewModel {
        EpisodioDetalleViewModel(id: id, title: title.rendered, content: content.rendered, guid: guid.rendered)
    }
}

struct EpisodioDetalleViewModel {
    let id: Int
    let title: String
    let content: String
    let guid: String
}

struct EpisodiosCellViewModel {
    let id: Int
    let title: String
    let content: String
    let guid: String
}
