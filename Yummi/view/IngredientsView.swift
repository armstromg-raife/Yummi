//
//  IngredientsView.swift
//  Yummi
//
//  Created by Raife Armstrong on 20/2/24.
//
import Foundation

import SwiftUI

struct IngredientsView: View {
    @State var ingredientsViewModel: IngredientsViewModel=IngredientsViewModel()
//    @State var ingredients:[Ingredient]
//    @State private var selectedIngredent=0
//    @State private var food=""
//    @State private var number=""
//    @State private var units=""
//    @State private var expireDate=""
//    @State private var catogaty = ""
    
    var body: some View {
        

        Form{
            List{
                ForEach(ingredientsViewModel.ingredients) { ingredient in
                    HStack{
                        
                        Text(ingredient.displayIngredient())
                        //Text("\(String(format:"%.1f",ingredient.ingredient))/10")
                    }
                }
            }
//            VStack{
//                
//                Text(self.ingredients.ingredients[selectedIngredent].displayIngredient())
//                
//            }
//                Button("next ingredent"){
//                    
//                    selectedIngredent = (selectedIngredent+1)%self.ingredients.ingredients.count
//            }
            Section{
                VStack{
                    Text("add ingredents")
                    TextField("ingredient", text: $ingredientsViewModel.food)
                    TextField("quantity", text: $ingredientsViewModel.number)
                    TextField("units", text: $ingredientsViewModel.units)
                    TextField("in how long will the food expire", text: $ingredientsViewModel.expireDate)
                    TextField("type of food", text: $ingredientsViewModel.catogaty)
                }
                Button("submit"){
                    if ingredientsViewModel.food != ""{
                        ingredientsViewModel.addNewIngredient()
                        
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

//struct Previews_IngredientsView_Previews: PreviewProvider {
//    static var previews: some View {
//        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
//    }
//}
