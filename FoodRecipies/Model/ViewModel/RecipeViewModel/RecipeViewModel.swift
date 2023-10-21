//
//  RecipeViewModel.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 16/10/23.
//

import Foundation
import SwiftUI

class RecipeViewModel: ObservableObject {
    
    //-------------------------------------
    //MARK: - Variables
    //-------------------------------------
    @Published var selectedCategory: RecipeType = .all
    @Published var filteredRecipes: [Recipes] = []
    @Published var recipeData = []
    
    //-------------------------------------
    //MARK: - Functions
    //-------------------------------------
    func filteredRecipes(recipes: [Recipes], by catType: RecipeType) {
        self.selectedCategory = catType
        filteredRecipes = recipes.filter({ recipe in
            return recipe.recipeType == selectedCategory
        })
        
        self.recipeData = filteredRecipes
        
    }
    
}
