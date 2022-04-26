//
//  FraseDelDiaViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 25/4/22.
//

import UIKit

class FraseDelDiaViewController: UIViewController, FraseDelDiaViewControllerContract
{
    var presenter: FraseDelDiaPresenterContract?
    
  
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    
        
    }
    
}


extension FraseDelDiaViewController {
   static func createFromStoryboard() -> FraseDelDiaViewController {
        return UIStoryboard(name: "FraseDelDiaViewController", bundle: .main).instantiateViewController(withIdentifier: "FraseDelDiaViewController") as! FraseDelDiaViewController
    }
}
