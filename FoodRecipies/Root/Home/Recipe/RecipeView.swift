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
    
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(Recipes.recipes) { recp in
                        RecipeCardView(recipe: recp)
                    }
                }
                .padding(.leading, 50)
            }
        }
    }
}

#Preview {
    RecipeView()
}
