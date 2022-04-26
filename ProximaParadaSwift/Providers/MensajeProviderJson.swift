//
//  MensajeProviderJson.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 21/4/22.
//https://programmingwithswift.com/how-to-save-json-to-file-with-swift/

import Foundation

let jsonString = "{\"location\": \"the moon\"}"

func saveJsonStringToFile() {
    
    if let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        let pathWithFilename = documentDirectory.appendingPathComponent("myJsonString.json")
        do {
            try jsonString.write(to: pathWithFilename, atomically: true, encoding: .utf8)
        } catch {
            fatalError("No se ha podido grabar")
        }
    }
}

func saveJsonDataToFile() {
    
    if let jsonData = jsonString.data(using: .utf8), let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        let pathWithFileName = documentDirectory.appendingPathComponent("myJsonData")
        do {
            try jsonData.write(to: pathWithFileName)
        } catch {
            fatalError("No se ha podido guardar")
        }
    }
}
