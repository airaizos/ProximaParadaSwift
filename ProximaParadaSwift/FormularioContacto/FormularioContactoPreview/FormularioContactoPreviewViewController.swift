//
//  FormularioContactoPreviewViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 28/3/22.
//

import UIKit

class FormularioContactoPreviewViewController: UIViewController,FormularioContactoPreviewViewControllerContract {
    
   var viewModel: FormularioContactoViewModel?
    var presenter: FormularioContactoPreviewPresenterContract?
    
    @IBOutlet weak var sendedMessageLabel: UILabel!
    
    @IBOutlet weak var sendButton: UIButton! {
        didSet {
            sendButton.setTitle(NSLocalizedString("formulario_contacto_send_button", comment: ""), for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = UIColor(named: "backgroundPrimary")
        sendedMessageLabel.text = viewModel?.sendedData
        //en que momento se vuelve nil
        
        sendedMessageLabel.textColor = UIColor(named: "textPrimary")
        presenter?.viewDidLoad()
    }
    
    func configure(with viewModel: FormularioContactoViewModel) {
        sendedMessageLabel.text = viewModel.sendedData
        
    }
    
    
    @IBAction func sendButtonAction(_ sender: UIButton) {
        presenter?.didPressSend( viewModel?.sendedData ?? "No data")

    }
    
    
}


extension FormularioContactoPreviewViewController {
    static func createFromView() -> FormularioContactoPreviewViewController {  return UIStoryboard(name: "FormularioContactoPreviewViewController", bundle: .main).instantiateViewController(withIdentifier: "FormularioContactoPreviewViewController")as! FormularioContactoPreviewViewController}
}


