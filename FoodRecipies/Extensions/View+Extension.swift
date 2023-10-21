//
//  View+Extension.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 20/10/23.
//

import SwiftUI

extension View {
    func roundedCorner(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
