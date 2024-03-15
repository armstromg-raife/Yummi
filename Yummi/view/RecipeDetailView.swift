//
//  RecipeDetailView.swift
//  Yummi
//
//  Created by Armstrong, Raife (SPH) on 27/02/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe:Recipe
    var body: some View {
        Form{
            HStack{
                Text("\(recipe.name)")
                Spacer()
                Text("\(String(format:"%.1f",recipe.rating))")
            }
            List{
                
                ForEach(recipe.displayRecipe()) { ingredient in
                    Text("\(ingredient.recipeIngredient())")
                }
            }
        }
    }
}

//#Preview {
//    RecipeDetailView(recipe:Recipe.examples[0])
//}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe:Recipe.examples[0])
    }
}
