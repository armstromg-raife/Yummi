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
    
}

struct Ingredient{
    private let ingredient:String
    private var quantity:Int
    private let units:Units
    private let expiryDate:Date
    private let category:Category
    
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
        \(quantity)\(units.rawValue) of \(ingredient)
        expiry date: \(temp[..<(temp.firstIndex(of: " ") ?? temp.endIndex)])
        """
    }
    
    
}
