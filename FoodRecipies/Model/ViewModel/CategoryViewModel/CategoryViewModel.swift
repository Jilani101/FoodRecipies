//
//  CategoryViewModel.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 11/10/23.
//

import Foundation
import SwiftUI

class CategoryViewModel: ObservableObject {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    @Published var categories: [Categories] = [
        Categories(id: UUID().uuidString, name: "All", selectedCat: true, catColor: Colors.primary_80),
        Categories(id: UUID().uuidString, name: "Indian", selectedCat: false, catColor: Colors.primary_80),
        Categories(id: UUID().uuidString, name: "Italian", selectedCat: false, catColor: Colors.primary_80),
        Categories(id: UUID().uuidString, name: "Asian", selectedCat: false, catColor: Colors.primary_80),
        Categories(id: UUID().uuidString, name: "Chinese", selectedCat: false, catColor: Colors.primary_80),
        Categories(id: UUID().uuidString, name: "Maxican", selectedCat: false, catColor: Colors.primary_80)
    ]
    
    
    //-------------------------------------
    //MARK: - functions
    //-------------------------------------
    
}
