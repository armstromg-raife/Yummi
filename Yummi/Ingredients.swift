//
//  Ingredients.swift
//  Yummi
//
//  Created by Armstrong, Raife (SPH) on 23/01/2024.
//

import Foundation
import SwiftUI

struct Ingredients{
    var ingredients=[Ingredient(ingredient: "Bananas", quantity: 2, units: Units.kg, expiryDate: Date(timeIntervalSinceNow: 864000), category: Category.fruits), Ingredient(ingredient: "Chicken Breast", quantity: 5, units: Units.kg, expiryDate: Date(timeIntervalSinceNow: 172800), category: Category.meat) ,Ingredient(ingredient: "Spinach", quantity: 500, units: Units.grams, expiryDate: Date(timeIntervalSinceNow: 432000), category: Category.vegetables),
                     Ingredient(ingredient: "Eggs", quantity: 12, units: Units.number, expiryDate: Date(timeIntervalSinceNow: 1728000), category: Category.dairy),
                     Ingredient(ingredient: "Rice", quantity: 1, units: Units.kg, expiryDate: Date(timeIntervalSinceNow: 604800), category: Category.starch)]
    
    
}
