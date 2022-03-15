//
//  ListadoProviderError.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 15/3/22.
//

import Foundation

enum ListadoProviderError: Error {
    case badUrl, generic(Error?), unableToFindFile, parseError(Error?)
}
