//
//  CategoryView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 11/10/23.
//

import SwiftUI

struct CategoryView: View {
    
    //-------------------------------------
    //MARK: - Variables
    //-------------------------------------
    @EnvironmentObject var recipeVM: RecipeViewModel
    @State var selectedIndex: Int? = 0
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 20) {
                ForEach(0 ..< Categories.categories.count, id: \.self) { index in
                    let cat = Categories.categories[index]
                    Button {
                        self.selectedIndex = index
                        self.recipeVM.filteredRecipes(recipes: Recipes.recipes, by: cat.catType)
                        self.recipeVM.selectedCategory = cat.catType
                    } label: {
                        Text(cat.name)
                            .font(.setFamily(.bold, size: 11))
                            .foregroundColor(self.selectedIndex == index ? Color.white : Colors.primary_80)
                            .padding()
                            .frame(height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(self.selectedIndex == index ? Colors.primary_100 : Color.clear)
                            )
                    }
                }
            }
            .padding(.leading, 30)
        }
        .frame(height: 51)
    }
}

#Preview {
    CategoryView()
        .environmentObject(CategoryViewModel())
}
