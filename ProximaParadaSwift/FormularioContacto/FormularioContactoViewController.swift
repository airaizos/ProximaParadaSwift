//
//  FormularioContactoViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 22/3/22.
//

import UIKit

class FormularioContactoViewController: UIViewController, FormularioContactoViewContract {
    var presenter: FormularioContactoPresenterContract?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension FormularioContactoViewController {
    static func createFromStoryBoard() -> FormularioContactoViewController {
        return UIStoryboard(name: "FormularioContactoViewController", bundle: .main).instantiateViewController(withIdentifier: "FormularioContactoViewController") as! FormularioContactoViewController
    }
}
