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
    @Published var filteredItems: [Recipes] = []
    @Published var selectedCategory: RecipeType = .all
    @Published var modifiedRecipeArray = []
    
    //-------------------------------------
    //MARK: - Init
    //-------------------------------------
    
    
    //-------------------------------------
    //MARK: - Functions
    //-------------------------------------
    func filterItems(by category: RecipeType, recipeData: [Recipes]) {
        filteredItems = recipeData.filter({ recipe in
            return recipe.recipeType == category
        })
        
        self.modifiedRecipeArray = filteredItems
        
    }
    
    func returnFilteredRecipes(recipes: [Recipes]) -> [Recipes] {
        
        return recipes
    }
}
