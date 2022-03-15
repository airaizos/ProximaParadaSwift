//
//  ListadoEpisodiosViewController.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 8/3/22.
//

import UIKit

class ListadoEpisodiosViewController: UIViewController, ListadoEpisodiosViewContract, UITableViewDelegate {
    
    var presenter: ListadoEpisodiosPresenterContract?
    
    @IBOutlet weak var ListadoEpisodios: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ListadoEpisodios.dataSource = self
        ListadoEpisodios.delegate = self
        presenter?.viewDidLoad()
        
    }
    
    func reloadData() {
        DispatchQueue.main.async {
            self.ListadoEpisodios.reloadData()
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
        
        cell.configure(with: viewModel)
        return cell
    }
}


extension ListadoEpisodiosViewController {
    static func createFromStoryBoard() -> ListadoEpisodiosViewController {
        return UIStoryboard(name: "ListadoEpisodiosViewController", bundle: .main).instantiateViewController(withIdentifier: "ListadoEpisodiosViewController") as! ListadoEpisodiosViewController
    }
}
