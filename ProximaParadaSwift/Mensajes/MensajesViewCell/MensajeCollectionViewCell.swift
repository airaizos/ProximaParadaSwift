//
//  MensajeCollectionViewCell.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 5/4/22.
//

import UIKit

class MensajeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var fechaLabel: UILabel!
    @IBOutlet weak var mensajeLabel: UILabel!
    
   
    func configure(with viewModel: Message) {
        
        fechaLabel.text = "Fecha"
        mensajeLabel.text = viewModel.message
        
    }
}
