//
//  DetailViewModel.swift
//  Palais Vietnam
//
//  Created by Anh Tu Nguyen on 06/08/2020.
//  Copyright © 2020 Anh Tu Nguyen. All rights reserved.
//

import Foundation

class DetailViewModel {
    
    var food: Food?
    
    func getFoodImageName() -> String? {
        return food?.imageName
    }
    
    func getName() -> String {
        guard let food = food else{
            return ""
        }
        return "\(food.name)"
    }
    
//    func getRating() -> String {
//        guard let film = film else{
//            return ""
//        }
//        return "\(film.rating)%"
//    }
    
    func getIngredients() -> String {
        guard let food = food else{
            return ""
        }
        var ingredients: String = ""
        for ingredient in food.ingredients{
            ingredients += "\(ingredient.name), "
        }
        return ingredients
    }
    
    
    func getFoodType() -> String? {
        return food?.foodTypeImage
    }
    
    
}
