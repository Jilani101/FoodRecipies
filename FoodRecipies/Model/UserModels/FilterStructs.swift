//
//  Filter.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 21/10/23.
//

import Foundation
import SwiftUI

struct TimeFilter: Identifiable {
    let id: String
    let filterTime: String
    
    static let timeFilterArray: [TimeFilter] = [
        TimeFilter(id: UUID().uuidString, filterTime: "All"),
        TimeFilter(id: UUID().uuidString, filterTime: "Newest"),
        TimeFilter(id: UUID().uuidString, filterTime: "Oldest"),
        TimeFilter(id: UUID().uuidString, filterTime: "Popularity")
    ]
}


struct RateFilter: Identifiable {
    let id: String
    let filterRate: String
    
    static let rateFilterArray: [RateFilter] = [
        RateFilter(id: UUID().uuidString, filterRate: "5"),
        RateFilter(id: UUID().uuidString, filterRate: "4"),
        RateFilter(id: UUID().uuidString, filterRate: "3"),
        RateFilter(id: UUID().uuidString, filterRate: "2"),
        RateFilter(id: UUID().uuidString, filterRate: "1")
    ]
}

struct CategoryFilter: Identifiable {
    let id: String
    let catFilterName: String
    
    static let catFilterArray: [CategoryFilter] = [
        CategoryFilter(id: UUID().uuidString, catFilterName: "All"),
        CategoryFilter(id: UUID().uuidString, catFilterName: "Cereal"),
        CategoryFilter(id: UUID().uuidString, catFilterName: "Vegetables"),
        CategoryFilter(id: UUID().uuidString, catFilterName: "Dinner"),
        CategoryFilter(id: UUID().uuidString, catFilterName: "Chinese"),
        CategoryFilter(id: UUID().uuidString, catFilterName: "Local Dish"),
        CategoryFilter(id: UUID().uuidString, catFilterName: "Fruit"),
        CategoryFilter(id: UUID().uuidString, catFilterName: "BreakFast"),
        CategoryFilter(id: UUID().uuidString, catFilterName: "Spanish"),
        CategoryFilter(id: UUID().uuidString, catFilterName: "Chinese"),
        CategoryFilter(id: UUID().uuidString, catFilterName: "Lunch")
    ]
}
