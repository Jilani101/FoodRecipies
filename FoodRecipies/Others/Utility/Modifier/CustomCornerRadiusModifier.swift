//
//  CustomCornerRadiusModifier.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 20/10/23.
//

import SwiftUI

struct CustomCornerRadius: ViewModifier {
    func body(content: Content) -> some View {
        content
            .roundedCorner(50, corners: [.topLeft, .topRight])
    }
}
