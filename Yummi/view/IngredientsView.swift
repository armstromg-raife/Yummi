//
//  IngredientsView.swift
//  Yummi
//
//  Created by Raife Armstrong on 20/2/24.
//

import SwiftUI

struct IngredientsView: View {
    @State private var ingredients=Ingredients()
    @State private var selectedIngredent=0
    @State private var food=""
    @State private var number=""
    @State private var units=""
    @State private var expireDate=""
    @State private var catogaty = ""
    
    var body: some View {
        
        Form{
            VStack{
                Text(self.ingredients.ingredients[selectedIngredent].displayIngredient())
            }
                Button("next ingredent"){
                    
                    selectedIngredent = (selectedIngredent+1)%self.ingredients.ingredients.count
            }
            Section{
                VStack{
                    Text("add ingredents")
                    TextField("ingredient", text: $food)
                    TextField("quantity", text: $number)
                    TextField("units", text: $units)
                    TextField("in how long will the food expire", text: $expireDate)
                    TextField("type of food", text: $catogaty)
                }
                    Button("submit"){
                        if food != ""{
                            self.ingredients.ingredients.append(Ingredient(ingredient: food, quantity: Int(number) ?? 1, units: Units(rawValue: units) ?? Units.kg, expiryDate: Date(timeIntervalSinceNow: TimeInterval(((Int(expireDate) ?? 5)*24*60*60))), category: Category(rawValue:catogaty) ?? Category.meat))
                            food=""
                            number=""
                            units=""
                            expireDate=""
                            catogaty = ""
                            
                        }
                    }
                    
                
                
               
            }
        }
    }
}



struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsView()
    }
}

struct Previews_IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
