//
//  EpisodioDetalleViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 14/3/22.
//

import UIKit

class EpisodioDetalleViewController: UIViewController {

        var viewModel: EpisodioDetalleViewModel?
        
        static func create() -> EpisodioDetalleViewController {
            return UIStoryboard(name: "EpisodioDetalleViewController", bundle: .main).instantiateViewController(withIdentifier: "EpisodioDetalleViewController") as! EpisodioDetalleViewController
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    

}
