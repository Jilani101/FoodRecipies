//
//  TextFieldModifier.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/09/23.
//

import Foundation
import SwiftUI

struct TextFieldModifier: ViewModifier {
    var height: CGFloat
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .frame(height: height)
            .overlay (
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color(.systemGray4), lineWidth: 2)
            )
            .padding(.horizontal, 24)
    }
}
