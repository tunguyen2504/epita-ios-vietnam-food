//
//  TableViewCell.swift
//  ClassSessionProject
//
//  Created by Anh Tu Nguyen on 06/08/2020.
//  Copyright © 2020 Anh Tu Nguyen. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    
    
    var viewModel: TableViewCellViewModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewModel = TableViewCellViewModel()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ food: Food?){
        guard let food = food else{
            return
        }
        foodImage.image = UIImage(named: viewModel?.getFoodName(food) ?? "banhXeo")
        foodNameLabel.text = viewModel?.getName(food)
//        ratingLabel.text = viewModel?.getRating(food)
    }

}
