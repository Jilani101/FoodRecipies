//
//  Categories.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 19/10/23.
//

import Foundation

//-------------------------------------
//MARK: - Category class
//-------------------------------------
struct Categories: Identifiable {
    let id: String
    let name: String
    let catType: RecipeType
    
    init(id: String, name: String, catType: RecipeType) {
        self.id = id
        self.name = name
        self.catType = catType
    }
}

//--------------------------------------------
// MARK: - Extension Categories
//--------------------------------------------
extension Categories {
    static let categories: [Categories] = [
        Categories(id: UUID().uuidString, name: "All", catType: .all),
        Categories(id: UUID().uuidString, name: "Indian", catType: .indian),
        Categories(id: UUID().uuidString, name: "Italian", catType: .italian),
        Categories(id: UUID().uuidString, name: "Asian", catType: .asian),
        Categories(id: UUID().uuidString, name: "Chinese", catType: .chinese),
        Categories(id: UUID().uuidString, name: "Maxican", catType: .maxican)
    ]
}
