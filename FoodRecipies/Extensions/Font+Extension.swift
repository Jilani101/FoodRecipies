//
//  Font+Extension.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/09/23.
//

import Foundation
import Foundation
import SwiftUI

extension Font {
    enum FontFamily: String {
        case thin
        case thinItalic
        case regular
        case italic
        case medium
        case mediumItalic
        case semibold
        case semiboldItalic
        case bold
        case black
        
        var value: String {
            switch self {
            case .thin:
                return "Poppins-Thin"
            case .thinItalic:
                return "Poppins-ThinItalic"
            case .regular:
                return "Poppins-Regular"
            case .italic:
                return "Poppins-Italic"
            case .medium:
                return "Poppins-Medium"
            case .mediumItalic:
                return "Poppins-MediumItalic"
            case .semibold:
                return "Poppins-SemiBold"
            case .semiboldItalic:
                return "Poppins-SemiBoldItalic"
            case .bold:
                return "Poppins-Bold"
            case .black:
                return "Poppins-Black"
            }
        }
    }
    
    static func setFamily(_ type: FontFamily, size: CGFloat = 16) -> Font {
        return .custom(type.value, size: size)
    }
}


