//
//  FormularioContactoViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 22/3/22.
//

import UIKit

class FormularioContactoViewController: UIViewController, FormularioContactoViewContract {
    var presenter: FormularioContactoPresenterContract?
    
    
    @IBOutlet weak var sayHelloLabel: UILabel! {
        didSet {
            sayHelloLabel.text = sayHelloLabel.titulo(texto: "formulario_contacto_say_hello")
        }
    }
    
    @IBOutlet weak var nameTextField: UITextField! {
        didSet {
            nameTextField.placeholder = emailTextField.titulo(texto:"formulario_contacto_name_placeholder")
        }
    }
    
    @IBOutlet weak var emailTextField: UITextField! {
        didSet {
            emailTextField.placeholder = emailTextField.titulo(texto: "formulario_contacto_email_placeholder")
        }
    }
    
    @IBOutlet weak var yourMessage: UILabel! {
        didSet {
            yourMessage.text = yourMessage.titulo(texto: "formulario_contacto_your_message")
        }
    }
    
    
    @IBOutlet weak var mensajeTextView: UITextView! {
        didSet {
            mensajeTextView.text = NSLocalizedString("formulario_contacto_mensajeTextView", comment: "")
        }
    }
    
    @IBOutlet weak var sendButton: UIButton! {
        didSet {
            sendButton.setTitle(NSLocalizedString("formulario_contacto_send_button", comment: ""), for: .normal)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        nameTextField.becomeFirstResponder()
        mensajeTextView.tintColor = .blue
        nameTextField.backgroundColor = .systemPink
        mensajeTextView.layer.cornerRadius = .pi
        mensajeTextView.backgroundColor = .brown
        mensajeTextView.textColor = .white
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func sendActionButton(_ sender: Any) {
        
    }
}


extension FormularioContactoViewController {
    static func createFromStoryBoard() -> FormularioContactoViewController {
        return UIStoryboard(name: "FormularioContactoViewController", bundle: .main).instantiateViewController(withIdentifier: "FormularioContactoViewController") as! FormularioContactoViewController
    }
}
