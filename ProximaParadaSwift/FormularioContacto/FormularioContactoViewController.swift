//
//  FormularioContactoViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 22/3/22.
//

import UIKit

class FormularioContactoViewController: UIViewController, FormularioContactoViewContract {
 
    var alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
    
    var presenter: FormularioContactoPresenterContract?
    
    
    @IBOutlet weak var titleView: UIView! {
        didSet {
            titleView.backgroundColor = UIColor(named: "primaryColor")
            titleView.tintColor = UIColor(named: "textPrimary")
        }
    }
    
    @IBOutlet weak var sayHelloLabel: UILabel! {
        didSet {
            sayHelloLabel.text = sayHelloLabel.titulo(texto: "formulario_contacto_say_hello")
            sayHelloLabel.backgroundColor = UIColor(named: "primaryColor")
            sayHelloLabel.textColor = UIColor(named: "textPrimary")
        }
    }
    
    @IBOutlet weak var nameTextField: UITextField! {
        didSet {
            nameTextField.placeholder = emailTextField.titulo(texto:"formulario_contacto_name_placeholder")
            nameTextField.backgroundColor = UIColor(named: "primaryColor")
            nameTextField.textColor = UIColor(named: "textPrimary")
        }
    }
    
    @IBOutlet weak var emailTextField: UITextField! {
        didSet {
            emailTextField.placeholder = emailTextField.titulo(texto: "formulario_contacto_email_placeholder")
            emailTextField.backgroundColor = UIColor(named: "primaryColor")
            emailTextField.textColor = UIColor(named: "textPrimary")
        }
           
    }
    
    @IBOutlet weak var yourMessage: UILabel! {
        didSet {
            yourMessage.text = yourMessage.titulo(texto: "formulario_contacto_your_message")
                yourMessage.textColor = UIColor(named: "textPrimary")
        }
    }
    
    
    @IBOutlet weak var mensajeTextView: UITextView! {
        didSet {
            mensajeTextView.text = NSLocalizedString("formulario_contacto_mensajeTextView", comment: "")
            mensajeTextView.textColor = UIColor(named: "textPrimary")
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
        initialConfiguration()
    }
    
//MARK: Funciones
    
    private func textFieldDidChange(_ textField: UITextField) {
        switch textField {
        case nameTextField: presenter?.didUpdateName(textField.text)
        case emailTextField: presenter?.didUpdateEmail(textField.text)
        case mensajeTextView: presenter?.didUpdateMessage(textField.text)
        default:
            break
        }
    }
    
    
    func showValidationFormularioContacto() {
        DispatchQueue.main.async {
            self.alert = UIAlertController(title: "¡Enviado!", message: "Te contestaré en cuanto pueda", preferredStyle: .alert)
            self.alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(self.alert, animated: true)
        }
    }
    
    func showErrorValidationFormularioContacto() {
        DispatchQueue.main.async {
            self.alert = UIAlertController(title: "Algún dato te ha faltado", message: "Inténtalo de nuevo", preferredStyle: .actionSheet)
            self.alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(self.alert,animated: true)
        }
    }
    
//MARK: IBActions
    @IBAction func TextFieldDidChange(textField: UITextField) {
        textFieldDidChange(textField)
    }
    
    @IBAction func sendActionButton(_ sender: Any) {
        presenter?.didPressSend()
    }
    

}

//MARK: TODO crear una extension de esto:
extension FormularioContactoViewController {
    static func createFromStoryBoard() -> FormularioContactoViewController {
        return UIStoryboard(name: "FormularioContactoViewController", bundle: .main).instantiateViewController(withIdentifier: "FormularioContactoViewController") as! FormularioContactoViewController
    }
}

extension FormularioContactoViewController: UITextViewDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case nameTextField: emailTextField.becomeFirstResponder()
        case emailTextField: yourMessage.becomeFirstResponder()
        case mensajeTextView: textField.resignFirstResponder()
        default: break
        }
        return true
    }
    
    @objc private func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    private func initialConfiguration() {
        view.backgroundColor = UIColor(named: "backgroundPrimary")
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
    }
    
}
