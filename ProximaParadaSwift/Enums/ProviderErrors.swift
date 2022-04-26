//
//  ProviderErrors.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 19/4/22.
//

import Foundation

enum ProviderError: Error {
    case badUrl, generic(Error?),unableToFindFile, parseError(Error?)
}
