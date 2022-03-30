//
//  FormularioContactoPreviewViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 28/3/22.
//

import UIKit

class FormularioContactoPreviewViewController: UIViewController {
    
   var viewModel: FormularioContactoViewModel?
    
    
    @IBOutlet weak var sendedMessageLabel: UILabel!
    
    static func create() -> FormularioContactoPreviewViewController {  return UIStoryboard(name: "FormularioContactoPreviewViewController", bundle: .main).instantiateViewController(withIdentifier: "FormularioContactoPreviewViewController")as! FormularioContactoPreviewViewController}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(named: "backgroundPrimary")
        sendedMessageLabel.text = viewModel?.sendedData
        sendedMessageLabel.textColor = UIColor(named: "textPrimary")
    }
    

}
