//
//  User.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/10/23.
//

import Foundation

//-------------------------------------
//MARK: - User
//-------------------------------------
struct User: Identifiable, Hashable, Codable {
    let id: String
    let email: String
    let fullName: String
    let profileImage: String?
    let userOccupation: String
    let bio: String?
}

//--------------------------------------------
// MARK: - Extension User
//--------------------------------------------
extension User {
    static let users: [User] = [
        User(id: NSUUID().uuidString, email: "", fullName: "James Milner", profileImage: "profile_image", userOccupation: "chef", bio: "Private Chef \nPassionate about food and life 🥘🍲🍝🍱"),
        User(id: NSUUID().uuidString, email: "", fullName: "James Milner", profileImage: "profile_image", userOccupation: "chef", bio: "Private Chef \nPassionate about food and life 🥘🍲🍝🍱"),
        User(id: NSUUID().uuidString, email: "", fullName: "James Milner", profileImage: "profile_image", userOccupation: "chef", bio: "Private Chef \nPassionate about food and life 🥘🍲🍝🍱"),
        User(id: NSUUID().uuidString, email: "", fullName: "James Milner", profileImage: "profile_image", userOccupation: "chef", bio: "Private Chef \nPassionate about food and life 🥘🍲🍝🍱"),
        User(id: NSUUID().uuidString, email: "", fullName: "James Milner", profileImage: "profile_image", userOccupation: "chef", bio: "Private Chef \nPassionate about food and life 🥘🍲🍝🍱"),
        User(id: NSUUID().uuidString, email: "", fullName: "James Milner", profileImage: "profile_image", userOccupation: "chef", bio: "Private Chef \nPassionate about food and life 🥘🍲🍝🍱"),
    ]
}
