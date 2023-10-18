//
//  UserRecipeCardView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/10/23.
//

import SwiftUI

struct UserRecipeCardView: View {
    
    //-------------------------------------
    //MARK: - Variables
    //-------------------------------------
    let recipe: Recipes
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        ZStack {
            ZStack {
                Color.white
            }
            .cornerRadius(14)
            HStack {
                VStack(alignment: .leading) {
                    Text("Steak with tomato sauce and bulgur rice.")
                        .font(.setFamily(.bold, size: 18))
                        .lineLimit(1, reservesSpace: true)
                    StarsView(rating: recipe.rating?.rating ?? 0.0)
                        .frame(width: 65,height: 12)
                        .padding(.bottom, 10)
                    HStack(spacing: 8) {
                        Image("profile_image")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                        Text("By \(recipe.user?.fullName ?? "Jilani Khokhar")")
                            .font(.setFamily(.regular, size: 14))
                            .foregroundStyle(Colors.gray_3)
                    }
                    .padding(.bottom, 10)
                }
                .padding(.leading, 10)
                VStack {
                    Image(recipe.recipeImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.top, -50)
                    .padding(.trailing, 10)
                    Spacer()
                    HStack {
                        Image("icn_timer")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                        Text("\(recipe.cookingTime) mins")
                            .font(.setFamily(.regular, size: 14))
                            .foregroundStyle(Colors.gray_3)
                    }
                    .padding(.bottom, 17)
                }
            }
            
        }
        .frame(width: 300, height: 120)
        .background(
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    RoundedRectangle(cornerRadius: 14)
                        .fill(Color.white)
                        .frame(width: 300, height: 120)
                        .shadow(color: Colors.gray_4, radius: 5, x: 0, y: 0)
                )
        )
        .padding(.leading, 30)
    }
}

#Preview {
    UserRecipeCardView(recipe: Recipes(
        id: UUID().uuidString, 
        recipeName: "Classic Greek Salad",
        recipeImage: "img_recipe_1", 
        cookingTime: "15",
        rating:
            Ratings.ratings[0],
        user:
            User(
                id: NSUUID().uuidString,
                email: "",
                fullName: "James Milner",
                profileImage: "profile_image",
                userOccupation: "chef",
                bio: "Private Chef \nPassionate about food and life 🥘🍲🍝🍱")))
}
