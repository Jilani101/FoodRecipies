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
    let categories: [Categories] = [
        Categories(id: UUID().uuidString, name: "All", catColor: Colors.primary_80),
        Categories(id: UUID().uuidString, name: "Indian", catColor: Colors.primary_80),
        Categories(id: UUID().uuidString, name: "Italian", catColor: Colors.primary_80),
        Categories(id: UUID().uuidString, name: "Asian", catColor: Colors.primary_80),
        Categories(id: UUID().uuidString, name: "Chinese", catColor: Colors.primary_80),
        Categories(id: UUID().uuidString, name: "Maxican", catColor: Colors.primary_80)
    ]
    
    
    //-------------------------------------
    //MARK: - functions
    //-------------------------------------
    
}
