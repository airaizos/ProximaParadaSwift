//
//  EpisodioDetalleViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 14/3/22.
//

import UIKit

class EpisodioDetalleViewController: UIViewController, EpisodioDetalleViewContract {

    var presenter: EpisodioDetallePresenterContract?
    
        var viewModel: EpisodioDetalleViewModel?
    
    
    
    @IBOutlet weak var tilte: UILabel!
    @IBOutlet weak var fecha: UILabel!
    @IBOutlet weak var contenido: UILabel!
        
        static func create() -> EpisodioDetalleViewController {
            return UIStoryboard(name: "EpisodioDetalleViewController", bundle: .main).instantiateViewController(withIdentifier: "EpisodioDetalleViewController") as! EpisodioDetalleViewController
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(with: viewModel!) 
     
    }
    
    func configure(with viewModel: EpisodioDetalleViewModel) {
        
        tilte.text = viewModel.title
      //  fecha.text = viewModel.guid
  //      contenido.text = viewModel.title
      
        
        
        let data = Data(viewModel.content.utf8)
       
        
        if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
            contenido.attributedText = attributedString
        }
    }
    
}

extension EpisodioDetalleViewController {
    static func createFromStoryBoard() -> EpisodioDetalleViewController {
        return UIStoryboard(name: "EpisodioDetalleViewController", bundle: .main).instantiateViewController(withIdentifier: "EpisodioDetalleViewController") as! EpisodioDetalleViewController
    }
}
