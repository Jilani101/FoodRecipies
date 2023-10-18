//
//  String+Extension.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/10/23.
//

import Foundation

extension String {
    func numberFormatter(number: CGFloat) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 1
        
        return formatter.string(from: NSNumber(value: Double(number))) ?? ""
    }
}
