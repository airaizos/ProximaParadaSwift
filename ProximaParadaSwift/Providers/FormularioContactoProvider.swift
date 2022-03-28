//
//  FormularioContactoProvider.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 27/3/22.
//

import Foundation


class FormularioContactoProvider: FormularioContactoProviderContract {
   
    private let fileManager: FileManager
    private let fileName: String
    
    init(fileManager: FileManager = FileManager.default, fileName: String = "FormularioContactoData") {
        self.fileManager = fileManager
        self.fileName = fileName
    }
    
    private var fileURL: URL? {
        let url = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first?
            .appendingPathExtension("\(fileName).plist")
        return url
    }

    func saveFormularioContacto(_ form: FormularioContactoModel) {
        guard let url = fileURL else {
            return
        }
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml
        
        do {
            let data = try encoder.encode(form)
            try data.write(to: url)
            try print(String(contentsOf: fileURL!).utf8)
        } catch {
            print("❌ Error al guardar: \(error.localizedDescription)")
        }
        
    }
 
}
