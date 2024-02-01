//
//  ContentView.swift
//  Yummi
//
//  Created by Armstrong, Raife (SPH) on 23/01/2024.
//

import SwiftUI


struct ContentView: View {
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
                
            VStack{
                Text("add ingredents")
                TextField("ingredient", text: $food)
                TextField("quantity", text: $number)
                TextField("units", text: $units)
                TextField("in how long will the food expire", text: $expireDate)
                TextField("type of food", text: $catogaty)
                    
                Button("submit"){
                    self.ingredients.ingredients.append(Ingredient(ingredient: food, quantity: Int(number) ?? 1, units: Units., expiryDate: Date(timeIntervalSinceNow: TimeInterval(((Int(expireDate) ?? 5)*24*60*60))), category: Category.))
                    food=""
                    number=""
                    units=""
                    expireDate=""
                    catogaty = ""
                }
                .padding()
                
               
            }
        }
    }
}

#Preview {
    ContentView()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
