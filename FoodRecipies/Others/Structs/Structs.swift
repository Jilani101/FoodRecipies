//
//  Structs.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 19/09/23.
//

import SwiftUI

//-------------------------------------
//MARK: - Shape struct
//-------------------------------------
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
