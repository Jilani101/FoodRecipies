//
//  Rating.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/10/23.
//

import Foundation

//-------------------------------------
//MARK: - Ratings
//-------------------------------------
struct Ratings: Identifiable {
    let id: String
    let rating: CGFloat
}

//--------------------------------------------
// MARK: - Extension Ratings
//--------------------------------------------
extension Ratings {
    static let ratings: [Ratings] = [
        Ratings(id: UUID().uuidString, rating: 4.5),
        Ratings(id: UUID().uuidString, rating: 3.5),
        Ratings(id: UUID().uuidString, rating: 4.7),
        Ratings(id: UUID().uuidString, rating: 2.0),
        Ratings(id: UUID().uuidString, rating: 3.4),
        Ratings(id: UUID().uuidString, rating: 3.9)
    ]
}
