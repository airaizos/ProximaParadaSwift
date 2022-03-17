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
    let guid: Rendered
    
    struct Rendered: Codable {
        let rendered: String
    }
}

extension PostTitle {
 
    var toEpisodioCellViewModel: ListadoEpisodiosCellViewModel {
        
        ListadoEpisodiosCellViewModel(id: id, title: title.rendered, subtitle: guid.rendered)
    }
}
