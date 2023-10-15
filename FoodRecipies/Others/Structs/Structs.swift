//
//  Structs.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 19/09/23.
//

import Foundation
import SwiftUI

//-------------------------------------
//MARK: - Category class
//-------------------------------------
class Categories: Identifiable, ObservableObject {
    let id: String
    let name: String
    @Published var selectedCat: Bool
    @Published var catColor: Color
    
    init(id: String, name: String, selectedCat: Bool, catColor: Color) {
        self.id = id
        self.name = name
        self.selectedCat = selectedCat
        self.catColor = catColor
    }
}
