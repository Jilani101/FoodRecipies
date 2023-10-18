//
//  Float+Extension.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/10/23.
//

import Foundation

extension Float {
    func decimals(_ nbr: Int) -> String {
        String(self.formatted(.number.precision(.fractionLength(nbr))))
    }
}
