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
