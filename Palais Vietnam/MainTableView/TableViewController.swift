//
//  TableViewController.swift
//  Palais Vietnam
//
//  Created by Anh Tu Nguyen on 06/08/2020.
//  Copyright © 2020 Anh Tu Nguyen. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: TableViewModel?
    var selectedFood: Food?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        viewModel = TableViewModel()
        title = "Vietnamese Food"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? DetailViewController else{
            return
        }
        detailViewController.viewModel.food = selectedFood
    }
}


extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else {
            return 0
        }
        return viewModel.getNumberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell") as? TableViewCell else{
            return UITableViewCell()
        }
        let food = viewModel?.foodAt(indexPath: indexPath)
        cell.configure(food)
        return cell
    }
    
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedFood = viewModel?.foodAt(indexPath: indexPath)
        let detailViewController = DetailViewController()
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
