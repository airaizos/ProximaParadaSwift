//
//  ListadoEpisodiosViewCellTableViewCell.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 14/3/22.
//

import UIKit

class ListadoEpisodiosViewCell: UITableViewCell {
    
    
    @IBOutlet weak var cellTitle: UILabel!
    
    @IBOutlet weak var cellSubtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
    func configure(with viewModel: ListadoEpisodiosCellViewModel) {
        
        cellTitle.text = viewModel.title
        cellSubtitle.text = viewModel.subtitle
    }

}
