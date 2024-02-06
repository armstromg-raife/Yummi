//
//  Recipe.swift
//  Yummi
//
//  Created by Armstrong, Raife (SPH) on 02/02/2024.
//

import Foundation

struct Recipe: Identifiable{
    let name:String
    let ingredients:Array<Array<Any>>
    var favourite:Bool
    var rating:Double
    
    var id: String{
        name
    }
    
    init(name: String, ingredients: Array<Array<Any>>, favourite: Bool, rating: Double) {
        self.name = name
        self.ingredients = ingredients
        self.favourite = favourite
        self.rating = rating
    }
    
    
    #if DEBUG
    
    static func createRecipe(name:String, ingredients:Array<Array<Any>>, favourite:Bool, rating:Double)->Recipe{
        let recipe=Recipe(name: name, ingredients:ingredients, favourite:favourite, rating:rating)
                        
            return recipe
        }
        
        static let examples=[createRecipe(
            name: "Banana Smoothie Bowl",
            ingredients: [[2, "Bananas"],[1, "Handful of Spinach"],[2, "Eggs"]],
            favourite: true,
            rating: 7.6),
        createRecipe(
            name: "Grilled Chicken with Spinach Salad",
            ingredients: [[2, "Chicken Breast"],[3, "Handfuls of Spinach"],[2, "Tablespoons of Olive Oil"],[1, "Lemon"]],
            favourite: false,
            rating: 4.2),
        createRecipe(
            name: "Egg Fried Rice",
            ingredients: [[3, "Eggs"],[1, "Cup of Rice"],[2, "Tablespoons of Soy Sauce"],[1, "Cup of Mixed Vegetables"]],
            favourite: true,
            rating: 9.7
        ),
        createRecipe(
            name: "Banana Nut Muffins",
            ingredients: [[3, "Bananas"],[2, "Cups of Flour"],[1, "Cup of Nuts"],[2, "Eggs"]],
            favourite: true,
            rating: 5.8
        ),
        createRecipe(
            name: "Chicken and Spinach Curry",
            ingredients: [[2, "Chicken Breast"],[2, "Handfuls of Spinach"],[1, "Can of Coconut Milk"],[1, "Teaspoon of Spices"]],
            favourite: true,
            rating: 3.5
        )]
    #endif
    
}
