//
//  CustomNavBar.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 20/10/23.
//

import SwiftUI

struct RatingView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    let recipe: Recipes
    let widht: CGFloat
    let height: CGFloat
    let imageWidth: CGFloat
    let imageHeight: CGFloat
    let fontSize: CGFloat
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        ZStack {
            Colors.secondary_20
                .frame(width: widht, height: height)
                .cornerRadius(20)
            HStack(spacing: 5) {
                Image("icn_star")
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageWidth, height: imageHeight)
                Text("0.0".numberFormatter(number: recipe.rating!.rating))
                    .font(.setFamily(.regular, size: fontSize))
            }
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
}

#Preview {
    RatingView(
        recipe:
            Recipes(
                id: UUID().uuidString,
                recipeName: "Traditional spare ribs baked",
                recipeImage: "img_recipe_6",
                cookingTime: "15",
                rating: Ratings.ratings[0],
                user: User.users[0],
                recipeType: .asian),
        widht: 65, 
        height: 30,
        imageWidth: 18,
        imageHeight: 18,
        fontSize: 14
    )
}
