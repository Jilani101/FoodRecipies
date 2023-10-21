//
//  SearchRecipeCardView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 20/10/23.
//

import SwiftUI

struct SearchRecipeCardView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    let recipe: Recipes
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        ZStack {
            
            //MARK: - recipe image
            Image(recipe.recipeImage)
                .resizable()
                .scaledToFill()
            
            //MARK: - lineargradient rect
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: .black.opacity(0), location: 0.00),
                            Gradient.Stop(color: .black, location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0.5, y: 0),
                        endPoint: UnitPoint(x: 0.5, y: 1)
                    )
                )
                .cornerRadius(10)
            //MARK: - Rating
            RatingView(recipe: recipe, widht: 40, height: 20, imageWidth: 10, imageHeight: 10, fontSize: 10)
                .padding(.trailing, 10)
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 10)
            
            //MARK: - recipe name and chef name
            VStack(alignment: .leading, spacing: 5) {
                Text(recipe.recipeName)
                    .font(.setFamily(.bold, size: 11))
                    .foregroundStyle(Color.white)
                Text("by \(recipe.user?.fullName ?? "")")
                    .font(.setFamily(.regular, size: 10))
                    .foregroundStyle(Colors.gray_3)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 70)
            
        }
        .frame(width: 150, height: 150)
    }
}

#Preview {
    SearchRecipeCardView(
        recipe: Recipes(
            id: UUID().uuidString,
            recipeName: "Traditional spare ribs baked",
            recipeImage: "img_recipe_6",
            cookingTime: "15",
            rating: Ratings.ratings[0],
            user: User.users[0],
            recipeType: .asian
        )
    )
}
