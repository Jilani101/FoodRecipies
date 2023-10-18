//
//  RecipeCardView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 16/10/23.
//

import SwiftUI

struct RecipeCardView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    let recipe: Recipes
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        ZStack {
            ZStack {
                Colors.gray_4
            }
            .cornerRadius(18)
            VStack(spacing: 15) {
                Image(recipe.recipeImage)
                    .resizable()
                    .frame(width: 160, height: 160)
                    .padding(.bottom, 11)
                    .padding(.top, -70)
                    .shadow(color: Colors.black.opacity(0.5), radius: 5, x: 0, y: 8)
                Text(recipe.recipeName)
                    .font(.setFamily(.semibold, size: 20))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Colors.gray_1)
                    .lineLimit(2)
                    .padding(.horizontal, 10)
                    .padding(.top, -10)
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Time")
                            .font(.setFamily(.regular, size: 16))
                            .foregroundStyle(Colors.gray_3)
                        Text(recipe.cookingTime + " Mins")
                            .font(.setFamily(.regular, size: 16))
                            .foregroundStyle(Colors.gray_1)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 15)
                    Button {
                        print("Saved")
                    } label: {
                        ZStack {
                            Rectangle()
                                .fill(Colors.white)
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                            Image("icn_save")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 18, height: 18)
                        }
                        .padding(.trailing, 10)
                        .padding(.bottom, -10)
                    }
                }
                .padding(.top, 19)
                .padding(.bottom, 10)
            }
            ZStack {
                Colors.secondary_20
                    .frame(width: 65, height: 30)
                    .cornerRadius(20)
                HStack(spacing: 5) {
                    Image("icn_star")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 18, height: 18)
                    Text("0.0".numberFormatter(number: recipe.rating!.rating))
                        .font(.setFamily(.regular, size: 14))
                }
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.top, -165)
        }
        .frame(width: 200, height: 260, alignment: .center)
        .padding(.leading, 30)
    }
}

#Preview {
    RecipeCardView(recipe: Recipes(id: UUID().uuidString, recipeName: "Classic Greek Salad", recipeImage: "img_recipe_1", cookingTime: "15", rating: Ratings.ratings[0], user: User(id: NSUUID().uuidString, email: "", fullName: "James Milner", profileImage: "profile_image", userOccupation: "chef", bio: "Private Chef \nPassionate about food and life 🥘🍲🍝🍱")))
}
