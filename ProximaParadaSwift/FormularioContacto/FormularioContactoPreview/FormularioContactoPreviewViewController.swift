//
//  FormularioContactoPreviewViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 28/3/22.
//

import UIKit

class FormularioContactoPreviewViewController: UIViewController,FormularioContactoPreviewViewControllerContract {
    
    var alert = AlertShow(title: "¡Enviado!", message: "Gracias", actionTitle: "OK")
    
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
      
        sendedMessageLabel.textColor = UIColor(named: "textPrimary")
        presenter?.viewDidLoad()
    }
    
    func configure(with viewModel: FormularioContactoViewModel) {
        sendedMessageLabel.text = viewModel.sendedData
    }
    
    func showValidationFormularioContacto() {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: "¡Enviado!", message: "Te contestaré en cuanto pueda", preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
        }
    }
    
    
    @IBAction func sendButtonAction(_ sender: UIButton) {
        
        showValidationFormularioContacto()
       //TODO: mostrar primero la alerta, después enviar a la collectionView
        presenter?.didPressSend( viewModel?.sendedData ?? "No data")
        //¿borrar viewModel.sendedData?
        
        
    }
}

extension FormularioContactoPreviewViewController {
    static func createFromView() -> FormularioContactoPreviewViewController {  return UIStoryboard(name: "FormularioContactoPreviewViewController", bundle: .main).instantiateViewController(withIdentifier: "FormularioContactoPreviewViewController")as! FormularioContactoPreviewViewController}
    
}


