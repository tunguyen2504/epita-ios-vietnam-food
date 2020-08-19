//
//  DetailViewController.swift
//  Palais Vietnam
//
//  Created by Anh Tu Nguyen on 06/08/2020.
//  Copyright © 2020 Anh Tu Nguyen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var ingredientsTextView: UITextView!
    @IBOutlet weak var foodTypeImageView: UIImageView!
    @IBOutlet weak var foodTypeLabel: UILabel!
    
    var viewModel = DetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
      private func configure(){
        foodImageView.image = UIImage(named: viewModel.getFoodImageName() ?? "BanhMi")
        foodLabel.text = viewModel.getName()
        descriptionTextView.text = viewModel.food?.summary
        ingredientsTextView.text = viewModel.getIngredients()
        foodTypeImageView.image = UIImage(named: viewModel.getFoodType() ?? "vegetarian")
        if(viewModel.getFoodType() == "vegetarian"){
            foodTypeLabel.text = "Vegetarian"
        } else{
            foodTypeLabel.text = "Non-Vegetarian"
        }
    }
}
