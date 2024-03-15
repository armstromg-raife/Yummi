//
//  IngredientsViewModel.swift
//  Yummi
//
//  Created by Armstrong, Raife (SPH) on 29/02/2024.
//

import Foundation

@Observable
class IngredientsViewModel: ObservableObject{
     var ingredients:[Ingredient]
    
     var selectedIngredent=0
     var food=""
     var number=""
     var units=""
     var expireDate=""
     var catogaty = ""
    
    init(){
        ingredients=Ingredient.examples
    }
    
    func addNewIngredient(){
        ingredients.append(Ingredient(ingredient: food, quantity: Int(number) ?? 1, units: Units(rawValue: units) ?? Units.kg, expiryDate: Date(timeIntervalSinceNow: TimeInterval(((Int(expireDate) ?? 5)*24*60*60))), category: Category(rawValue:catogaty) ?? Category.meat))
        food=""
        number=""
        units=""
        expireDate=""
        catogaty = ""
    }
}
