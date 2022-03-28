//
//  FormularioContactoPreviewViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 28/3/22.
//

import UIKit

class FormularioContactoPreviewViewController: UIViewController {
    
   var viewModel: FormularioContactoViewModel?

    static func create() -> FormularioContactoPreviewViewController {  return UIStoryboard(name: "FormularioContactoPreviewViewController", bundle: .main).instantiateViewController(withIdentifier: "FormularioContactoPreviewViewController")as! FormularioContactoPreviewViewController}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    

}
