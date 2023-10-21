//
//  SearchGridView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 20/10/23.
//

import SwiftUI

struct SearchGridView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1.5),
        .init(.flexible(), spacing: 1.5)
    ]
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: gridItems, content: {
                ForEach(Recipes.recipes) { recipe in
                    SearchRecipeCardView(recipe: recipe)
                }
            })
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    SearchGridView()
}
