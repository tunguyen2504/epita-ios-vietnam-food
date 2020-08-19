//
//  TableViewModel.swift
//  Palais Vietnam
//
//  Created by Anh Tu Nguyen on 06/08/2020.
//  Copyright © 2020 Anh Tu Nguyen. All rights reserved.
//

import Foundation

class TableViewModel {
    private var array: [Food]
    
    init() {
        self.array = [
            Food(imageName: "pho", name: "Pho", ingredients: [Ingredient(name: "Noodles"), Ingredient(name: "Ham, Chicken or Meat"), Ingredient(name: "Spring Onions"), Ingredient(name: "Cinnamon"), Ingredient(name: "Parsley")], summary: "It's almost impossible to walk a block in Vietnam's major destinations without bumping into a crowd of hungry patrons slurping noodles at a makeshift pho stand. This simple staple consisting of a salty broth, fresh rice noodles, a sprinkling of herbs and chicken or beef, features predominately in the local diet -- and understandably so. It's cheap, tasty, and widely available at all hours.", foodTypeImage: "vegetarian"),
            
            Food(imageName: "chaCa", name: "Cha Ca", ingredients: [Ingredient(name: "Fish Fillet"), Ingredient(name: "Garlic"), Ingredient(name: "Ginger"), Ingredient(name: "Turmeric"), Ingredient(name: "Dill")], summary: "Hanoians consider cha ca to be so exceptional that there is a street in the capital dedicated to these fried morsels of fish. This namesake alley is home to Cha Ca La Vong, which serves sizzling chunks of fish seasoned with garlic, ginger, turmeric and dill on a hot pan tableside.", foodTypeImage: "vegetarian"),
            
            Food(imageName: "banhXeo", name: "Banh Xeo", ingredients: [Ingredient(name: "Pork or Shrimp"), Ingredient(name: "Beans"), Ingredient(name: "Herbs"), Ingredient(name: "Rice paper"), Ingredient(name: "Spices")], summary: "A good banh xeo is a crispy crepe bulging with pork, shrimp, and bean sprouts, plus the garnish of fresh herbs that are characteristic of most authentic Vietnamese dishes. To enjoy one like a local, cut it into manageable slices, roll it up in rice paper or lettuce leaves and dunk it in whatever special sauce the chef has mixed up for you.", foodTypeImage: "non-vegetarian"),
            
            Food(imageName: "caoLau", name: "Cao Lau", ingredients: [Ingredient(name: "Pork"), Ingredient(name: "Noodles"), Ingredient(name: "Chili"), Ingredient(name: "Leaves"), Ingredient(name: "Won-Ton")], summary: "This pork noodle dish from Hoi An is a bit like the various cultures that visited the trading port at its prime. The thicker noodles are similar to Japanese udon, the crispy won-ton crackers and pork are a Chinese touch, while the broth and herbs are clearly Vietnamese. Authentic cau lao is made only with water drawn from the local Ba Le well.", foodTypeImage: "non-vegetarian"),
            
            Food(imageName: "goiCuon", name: "Goi Cuon", ingredients: [Ingredient(name: "Nems"), Ingredient(name: "Coriander"), Ingredient(name: "Green Salads"), Ingredient(name: "Meat or fish"), Ingredient(name: "Carrot")], summary: "These light and healthy fresh spring rolls are a wholesome choice when you've been indulging in too much of the fried food in Vietnam. The translucent parcels are first packed with salad greens, a slither of meat or seafood and a layer of coriander, before being neatly rolled and dunked in Vietnam's favorite condiment -- fish sauce.", foodTypeImage: "vegetarian"),
            
            Food(imageName: "banhKhot", name: "Banh Khot", ingredients: [Ingredient(name: "Shrimps or Meat"), Ingredient(name: "Mint Leaves"), Ingredient(name: "Soy Sauce"), Ingredient(name: "Sweet n Sour Sauce"), Ingredient(name: "Vietnamese Pancake")], summary: "This dainty variation of a Vietnamese pancake has all the same tasty ingredients but is a fraction of the size. Each banh knot can be scoffed in one ambitious but satisfying mouthful. The crunchy outside is made using coconut milk and the filling usually consists of shrimp, mung beans, and spring onions with a dusting of dried shrimp flakes on top.", foodTypeImage: "non-vegetarian"),
            
            Food(imageName: "bunBoNamBo", name: "Bun Bo Nam Bo", ingredients: [Ingredient(name: "Nuts"), Ingredient(name: "Beef"), Ingredient(name: "Shallots"), Ingredient(name: "Fish Sauce"), Ingredient(name: "Beans")], summary: "This bowl of noodles comes sans broth, keeping the ingredients from becoming sodden and the various textures intact. The tender slices of beef mingle with crunchy peanuts and bean sprouts, and are flavored with fresh herbs, crisp dried shallots, and a splash of fish sauce and fiery chili pepper.", foodTypeImage: "non-vegetarian"),
            
            Food(imageName: "gaNuong", name: "Ga Nuong", ingredients: [Ingredient(name: "Grilled Chicken"), Ingredient(name: "Sweet n Sour Sauce"), Ingredient(name: "Rice"), Ingredient(name: "Honey Coating"), Ingredient(name: "Fresh Veggies")], summary: "KFC may be everywhere in Vietnam these days, but skip the fast food for the local version. Honey marinated then grilled over large flaming barbecues, the chicken legs, wings and feet served are unusually tender, while the skin stays crispy but not dry.", foodTypeImage: "non-vegetarian"),
            
            Food(imageName: "xoi", name: "Xoi", ingredients: [Ingredient(name: "Boiled Potato"), Ingredient(name: "Meat"), Ingredient(name: "Preserved Eggs"), Ingredient(name: "Shallots"), Ingredient(name: "Rice")], summary: "Savory sticky rice is less of an accompaniment to meals in Vietnam, more a meal itself. The glutinous staple comes with any number of mix-ins (from slithers of chicken, or pork to fried or preserved eggs), but almost always with a scattering of dried shallots on top.", foodTypeImage: "non-vegetarian"),
            
            Food(imageName: "banhCuon", name: "Banh Cuon", ingredients: [Ingredient(name: "Fresh Leaves"), Ingredient(name: "Soy Sauce"), Ingredient(name: "Bagged Raviolies"), Ingredient(name: "Minced Pork"), Ingredient(name: "Rice")], summary: "These rolled up rice flour pancakes are best when served piping hot, still soft and delicate. Although seemingly slender and empty they have a savory filling of minced pork and mushrooms. Zest is also added by dunking the slippery parcels in a fishy dipping sauce.", foodTypeImage: "vegetarian"),
            
            Food(imageName: "botChien", name: "Bot Chien", ingredients: [Ingredient(name: "Mixed Eggs"), Ingredient(name: "Beef"), Ingredient(name: "Sweet n Sour Sauce"), Ingredient(name: "Rice Noodles"), Ingredient(name: "Green Onions")], summary: "Saigon's favorite streetside snack, bot chien, is popular with both the afterschool and the after-midnight crowd. Chunks of rice flour dough are fried in a large wok until crispy and then an egg is broken into the mix. Once cooked it's served with slices of papaya, shallots and green onions, before more flavor is added with pickled chili sauce and rice vinegar.", foodTypeImage: "vegetarian"),
            
            Food(imageName: "banhMi", name: "Banh Mi", ingredients: [Ingredient(name: "Carrot"), Ingredient(name: "Cucumber"), Ingredient(name: "Minsed Ham"), Ingredient(name: "Lemon Sauce"), Ingredient(name: "Fresh Veggies")], summary: "The French may have brought with them the baguette, but Vietnam takes it to a different level. How exactly depends on what end of the country you're in. In the north, chefs stick to the basic elements of carbohydrate, fat and protein -- bread, margarine and pata -- but head south and your banh mi may contain a more colorful combination of cheese, cold cuts, pickled vegetables, sausage, fried egg, fresh cilantro and chili sauce.", foodTypeImage: "vegetarian")
        ]
    }
    
    func getNumberOfRows() -> Int{
        return array.count
    }
    
    func foodAt(indexPath: IndexPath) -> Food{
        return array[indexPath.row]
    }
}



