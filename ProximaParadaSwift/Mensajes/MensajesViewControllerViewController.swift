//
//  MensajesCollectionViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 5/4/22.
//

import UIKit

class MensajesCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, MensajeCollectionViewControllerContract {
  
    
    
    var presenter: MensajeCollectionPresenterContract?
    
    @IBOutlet weak var mensajesTitulo: UILabel!
    
    @IBOutlet weak var mensajesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    func reloadData() {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.numItems ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let viewModel = presenter?.cellViewModel(at: indexPath), let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? MensajeCollectionViewCell else {
            fatalError()
        }
        cell.configure(with: viewModel)
        return cell
    }

}

extension MensajesCollectionViewController {
    static func createFromStoryboard() -> MensajesCollectionViewController {
        return UIStoryboard(name: "MensajesCollectionViewController", bundle: .main).instantiateViewController(withIdentifier: "MensajesCollectionViewController") as! MensajesCollectionViewController
    }
}
