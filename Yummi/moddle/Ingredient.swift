//
//  Ingredient.swift
//  Yummi
//
//  Created by Armstrong, Raife (SPH) on 23/01/2024.
//

import Foundation


enum Category: String{
    case fruits="Fruits"
    case meat="Meat"
    case vegetables="Vegetables"
    case dairy="Dairy"
    case starch="Starch"
}
enum Units: String{
    case number=""
    case kg="kg of"
    case grams="g of"
    case ml="ml of"
    
}

struct Ingredient :Identifiable{
    private let ingredient:String
    private var quantity:Int
    private let units:Units
    private let expiryDate:Date
    private let category:Category
    
    var id: String{
        ingredient
    }
    
    init(ingredient: String, quantity: Int, units: Units, expiryDate: Date, category: Category) {
        self.ingredient = ingredient
        self.quantity = quantity
        self.units = units
        self.expiryDate = expiryDate
        self.category = category
    }
    
    func displayIngredient()->String{
        let temp="\(expiryDate)"
        return"""
        \(category.rawValue)
        \(quantity)\(units.rawValue) \(ingredient)
        expiry date: \(temp[..<(temp.firstIndex(of: " ") ?? temp.endIndex)])
        """
    }
    
    func recipeIngredient()->String{
        return"""
        \(quantity)\(units.rawValue) \(ingredient)
"""
    }
    
    #if DEBUG
    
    static func createIngredient(ingredient: String, quantity: Int, units: Units, expiryDate: Date, category: Category)->Ingredient{
        let Ingredient=Ingredient(ingredient: ingredient, quantity: quantity, units: units, expiryDate: expiryDate, category: category)
        
        return Ingredient
    }
    
    static let examples=[createIngredient(ingredient: "Bananas", quantity: 2, units: Units.kg, expiryDate: Date(timeIntervalSinceNow: 864000), category: Category.fruits), createIngredient(ingredient: "Chicken Breast", quantity: 5, units: Units.kg, expiryDate: Date(timeIntervalSinceNow: 172800), category: Category.meat) ,createIngredient(ingredient: "Spinach", quantity: 500, units: Units.grams, expiryDate: Date(timeIntervalSinceNow: 432000), category: Category.vegetables),
                            createIngredient(ingredient: "Eggs", quantity: 12, units: Units.number, expiryDate: Date(timeIntervalSinceNow: 1728000), category: Category.dairy),
                            createIngredient(ingredient: "Rice", quantity: 1, units: Units.kg, expiryDate: Date(timeIntervalSinceNow: 604800), category: Category.starch)]
    #endif
    
    
}
