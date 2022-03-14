//
//  ListadoEpisodiosViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import UIKit

class ListadoEpisodiosViewController: UIViewController, ListadoEpisodiosViewContract, UITableViewDelegate {
  

    
    
    var presenter: ListadoEpisodiosPresenterContract?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }
    
    func reloadData() {
        DispatchQueue.main.async {
    //    self.tableView.reloadData()
    }
}
}

extension ListadoEpisodiosViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter?.numItems ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let viewModel = presenter?.cellViewModel(at: indexPath), let cell = tableView.dequeueReusableCell(withIdentifier: "ListadoEpisodiosCell", for: indexPath) as? ListadoEpisodiosViewCell else {
            fatalError()
        }
        
        return cell
    }
}
