//
//  ContentView.swift
//  Yummi
//
//  Created by Armstrong, Raife (SPH) on 23/01/2024.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedView = false
    
    
    var body: some View {
        VStack{
            if selectedView{
                Text("Recipes")
                
            }else{
                Text("Ingredients")
            }
            
            if selectedView {
                RecipeView(recipe:Recipe.examples)
            } else {
                IngredientsView()
            }
            Spacer()
            if selectedView{
                Button("Ingredients"){
                    selectedView=false
                }
                .buttonStyle(.borderedProminent)
            }else{
                Button("Recipes"){
                    
                    selectedView=true
                    
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
