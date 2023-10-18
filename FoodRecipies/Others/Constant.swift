//
//  Constant.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 18/09/23.
//

import Foundation
import SwiftUI


//-------------------------------------
//MARK: - Enums
//-------------------------------------



//-------------------------------------
//MARK: - Colors
//-------------------------------------
struct Colors {

    // white
    static let white = Color(hex: "#FFFFFF")
    static let black = Color(hex: "#000000")
    
    // Primary green
    static let primary_100 = Color(hex: "#129575")
    static let primary_80 = Color(hex: "#71B1A1")
    static let primary_60 = Color(hex: "#AFD3CA")
    static let primary_40 = Color(hex: "#DBEBE7")
    static let primary_20 = Color(hex: "#F6FAF9")
    
    // Primary gray
    static let gray_1 = Color(hex: "#484848")
    static let gray_2 = Color(hex: "#797979")
    static let gray_3 = Color(hex: "#A9A9A9")
    static let gray_4 = Color(hex: "#D9D9D9")
    
    // secondary
    static let secondary_100 = Color(hex: "#FF9C00")
    static let secondary_80 = Color(hex: "#FFA61A")
    static let secondary_60 = Color(hex: "#FFBA4D")
    static let secondary_40 = Color(hex: "#FFCE80")
    static let secondary_20 = Color(hex: "#FFE1B3")
    
    // rating
    static let rating = Color(hex: "#FFAD30")
    
    // warning
    static let warning_1 = Color(hex: "#804E00")
    static let warning_2 = Color(hex: "#995E00")
    
    // green
    static let green = Color(hex: "#31B057")
    
    // shadow
    static let clr_shadow = Color(hex: "#20202026")
}

//-------------------------------------
//MARK: - Category class
//-------------------------------------
class Categories: Identifiable, ObservableObject {
    let id: String
    let name: String
    @Published var catColor: Color
    
    init(id: String, name: String, catColor: Color) {
        self.id = id
        self.name = name
        self.catColor = catColor
    }
}
