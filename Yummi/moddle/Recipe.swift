//
//  Recipe.swift
//  Yummi
//
//  Created by Armstrong, Raife (SPH) on 02/02/2024.
//

import Foundation

struct Recipe: Identifiable{
    let name:String
    let ingredients: [Ingredient]
    var favourite:Bool
    var rating:Double
    
    var id: String{
        name
    }
    
    init(name: String, ingredients: [Ingredient], favourite: Bool, rating: Double) {
        self.name = name
        self.ingredients = ingredients
        self.favourite = favourite
        self.rating = rating
    }
    
    func displayRecipe()->[Ingredient]{
        return ingredients
    }
    #if DEBUG
    
    static func createRecipe(name:String, ingredients:[Ingredient], favourite:Bool, rating:Double)->Recipe{
        
        let recipe=Recipe(name: name, ingredients:ingredients, favourite:favourite, rating:rating)
                        
            return recipe
        }
        
        static let examples=[createRecipe(
            name: "Banana Smoothie Bowl",
            ingredients: [Ingredient(ingredient: "Bananas", quantity: 2, units: Units.kg, expiryDate: Date(), category: Category.fruits),Ingredient(ingredient: "Spinach", quantity: 500, units: Units.grams, expiryDate: Date(), category: Category.fruits),Ingredient(ingredient: "Eggs", quantity: 2, units: Units.number, expiryDate: Date(), category: Category.fruits)],
            favourite: true,
            rating: 7.6),
        createRecipe(
            name: "Grilled Chicken with Spinach Salad",
            ingredients: [Ingredient(ingredient: "Chicken Breast", quantity: 1, units: Units.kg, expiryDate: Date(), category: Category.meat),Ingredient(ingredient: "Spinach", quantity: 300, units: Units.grams, expiryDate: Date(), category: Category.fruits)],
            favourite: false,
            rating: 4.2),
        createRecipe(
            name: "Egg Fried Rice",
            ingredients: [Ingredient(ingredient: "Eggs", quantity: 2, units: Units.number, expiryDate: Date(), category: Category.fruits),Ingredient(ingredient: "Rice", quantity: 1, units: Units.kg, expiryDate: Date(), category: Category.starch),Ingredient(ingredient: "Mixed Vegetables", quantity: 500, units: Units.grams, expiryDate: Date(), category: Category.fruits)],
            favourite: true,
            rating: 9.7
        ),
        createRecipe(
            name: "Banana Muffins",
            ingredients: [Ingredient(ingredient: "Bananas", quantity: 2, units: Units.kg, expiryDate: Date(), category: Category.fruits),Ingredient(ingredient: "Flour", quantity: 250, units: Units.grams, expiryDate: Date(), category: Category.fruits),Ingredient(ingredient: "Eggs", quantity: 2, units: Units.number, expiryDate: Date(), category: Category.fruits)],
            favourite: true,
            rating: 5.8
        ),
        createRecipe(
            name: "Chicken and Spinach Curry",
            ingredients: [Ingredient(ingredient: "Chicken Breast", quantity: 5, units: Units.kg, expiryDate: Date(timeIntervalSinceNow: 172800), category: Category.meat),Ingredient(ingredient: "Spinach", quantity: 500, units: Units.grams, expiryDate: Date(), category: Category.fruits),Ingredient(ingredient: "Coconut Milk", quantity: 500, units: Units.ml, expiryDate: Date(), category: Category.starch)],
            favourite: true,
            rating: 3.5
        )]
    #endif
    
}
