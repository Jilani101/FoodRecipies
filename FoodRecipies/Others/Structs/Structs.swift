//
//  Structs.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 19/09/23.
//

import Foundation
import SwiftUI

//-------------------------------------
//MARK: - Tab screen item
//-------------------------------------
struct Item {
    let title: String
    let color: Color
    let icon: String
}

extension Item {
    static let tabItemArray: [Item] = [
        Item(title: "cart", color: .red, icon: "cart"),
        Item(title: "house", color: .blue, icon: "house"),
        Item(title: "car", color: .green, icon: "car"),
        Item(title: "plane", color: .green, icon: "car"),
    ]
}
