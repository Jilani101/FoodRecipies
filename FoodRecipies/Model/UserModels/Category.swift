//
//  Category.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 19/10/23.
//

import Foundation

//-------------------------------------
//MARK: - Category class
//-------------------------------------
struct Category: Identifiable {
    let id: String
    let name: String
    let catType: RecipeType
    
    init(id: String, name: String, catType: RecipeType) {
        self.id = id
        self.name = name
        self.catType = catType
    }
}
