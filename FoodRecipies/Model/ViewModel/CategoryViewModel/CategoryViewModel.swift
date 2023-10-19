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
    static let categories: [Category] = [
        Category(id: UUID().uuidString, name: "All", catType: .all),
        Category(id: UUID().uuidString, name: "Indian", catType: .indian),
        Category(id: UUID().uuidString, name: "Italian", catType: .italian),
        Category(id: UUID().uuidString, name: "Asian", catType: .asian),
        Category(id: UUID().uuidString, name: "Chinese", catType: .chinese),
        Category(id: UUID().uuidString, name: "Maxican", catType: .maxican)
    ]
    
    
    //-------------------------------------
    //MARK: - functions
    //-------------------------------------
    
}
