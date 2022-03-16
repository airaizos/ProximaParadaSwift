//
//  BundleDecodable.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 16/3/22.
//

import Foundation

extension Bundle {
    func decode<T: Codable> (_ file: String) -> T {
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Error al localizar el archivo \(file) en el budle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Error al cargar el archivo \(file) del bundle")
        }
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Error al decodificar \(file) del bundle")
        }
        return loaded
    }
}
