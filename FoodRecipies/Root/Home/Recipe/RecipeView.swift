//
//  RecipeView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 16/10/23.
//

import SwiftUI

struct RecipeView: View {
    //-------------------------------------
    //MARK: - Variables
    //-------------------------------------
    @EnvironmentObject var recipeVM: RecipeViewModel
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.recipeVM.selectedCategory == .all ? Recipes.recipes : self.recipeVM.filteredItems) { recp in
                            RecipeCardView(recipe: recp)
                    }
                }
                .padding(.top, 75)
            }
            .padding(.top, 10)
            .padding(.trailing, 20)
            .padding(.bottom, 20)
        }
        .onAppear {
            self.recipeVM.filteredItems = Recipes.recipes
        }
    }
}

#Preview {
    RecipeView()
}
