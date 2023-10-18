//
//  Recipes.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/10/23.
//

import Foundation
import SwiftUI

//-------------------------------------
//MARK: - Recipes
//-------------------------------------
struct Recipes: Identifiable {
    let id: String
    let recipeName: String
    let recipeImage: String
    let cookingTime: String
    let rating: Ratings?
    let user: User?
}

//-------------------------------------
//MARK: - Recipe Extension
//-------------------------------------
extension Recipes {
    static let recipes: [Recipes] = [
        Recipes(id: UUID().uuidString, recipeName: "Classic Greek Salad", recipeImage: "img_recipe_1", cookingTime: "15", rating: Ratings.ratings[0], user: User.users[0]),
        Recipes(id: UUID().uuidString, recipeName: "Classic Greek Salad", recipeImage: "img_recipe_2", cookingTime: "5", rating: Ratings.ratings[1], user: User.users[1]),
        Recipes(id: UUID().uuidString, recipeName: "Classic Greek Salad", recipeImage: "img_recipe_3", cookingTime: "10", rating: Ratings.ratings[2], user: User.users[2]),
        Recipes(id: UUID().uuidString, recipeName: "Classic Greek Salad", recipeImage: "img_recipe_4", cookingTime: "25", rating: Ratings.ratings[3], user: User.users[3]),
        Recipes(id: UUID().uuidString, recipeName: "Classic Greek Salad", recipeImage: "img_recipe_5", cookingTime: "20", rating: Ratings.ratings[4], user: User.users[4]),
        Recipes(id: UUID().uuidString, recipeName: "Classic Greek Salad", recipeImage: "img_recipe_6", cookingTime: "12", rating: Ratings.ratings[5], user: User.users[5]),
    ]
}
