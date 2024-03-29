//
//  resipies.swift
//  Yummi
//
//  Created by Armstrong, Raife (SPH) on 02/02/2024.
//

import Foundation

import SwiftUI


struct RecipeView: View {
    var recipe:[Recipe]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(recipe) { recipe in
                    
                    
                    NavigationLink(destination:  RecipeDetailView(recipe:recipe) ){
                        Text("\(recipe.name ) \(String(format:"%.1f",recipe.rating))/10")
                    }
                    
                    
                    
                }
            }
        }
        
    }
}

//#Preview {
//    RecipeView(recipe: Recipe.examples)
//}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe:Recipe.examples)
    }
}
