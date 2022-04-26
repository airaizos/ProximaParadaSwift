//
//  ListadoFrasedelDiaViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 25/4/22.
//

import UIKit

class ListadoFraseDelDiaViewController: UIViewController {

    var presenter: ListadoFraseDelDiaPresenterContract?
    
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


extension ListadoFraseDelDiaViewController: ListadoFraseDelDiaViewControllerContract {
  
    
    static func createFromStoryBoard() -> ListadoFraseDelDiaViewController {
        
        return UIStoryboard(name: "ListadoFraseDelDiaViewController", bundle: .main).instantiateViewController(withIdentifier: "ListadoFraseDelDiaViewController") as! ListadoFraseDelDiaViewController
    }
    
    
}
