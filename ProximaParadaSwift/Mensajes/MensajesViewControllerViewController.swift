//
//  MensajesCollectionViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 5/4/22.
//

import UIKit

class MensajesCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var mensajesTitulo: UILabel!
    
    @IBOutlet weak var mensajesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }

}

extension MensajesCollectionViewController {
    static func createFromStoryboard() -> MensajesCollectionViewController {
        return UIStoryboard(name: "MensajesCollectionViewController", bundle: .main).instantiateViewController(withIdentifier: "MensajesCollectionViewController") as! MensajesCollectionViewController
    }
}
