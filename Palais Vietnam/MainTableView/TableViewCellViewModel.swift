//
//  TableViewCellViewModel.swift
//  ClassSessionProject
//
//  Created by Anh Tu Nguyen on 06/08/2020.
//  Copyright © 2020 Anh Tu Nguyen. All rights reserved.
//

import Foundation

class TableViewCellViewModel{
//    var film: Film?
    
    func getName(_ food: Food?) -> String {
        guard let food = food else{
            return ""
        }
        return "\(food.name)"
    }
    
//    func getIngredients(_ food: Food?) -> String {
//        guard let food = food else{
//            return ""
//        }
//        var cast: String = ""
//        for actor in film.cast{
//            cast += "\(actor.name), "
//        }
//        return cast
//    }
    
    
    func getFoodName(_ food: Food?) -> String? {
        return food?.imageName
    }
    
    
}
