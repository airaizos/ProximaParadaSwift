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
    
   
    func configure(with viewModel: EntityMessage) {
        
        fechaLabel.text = "\(String(describing: viewModel.date))"
        mensajeLabel.text = viewModel.message
        
    }
}
