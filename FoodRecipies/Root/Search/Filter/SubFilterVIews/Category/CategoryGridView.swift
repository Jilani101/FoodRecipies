//
//  CategoryGridView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 23/10/23.
//

import SwiftUI

struct CategoryGridView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1.5),
        .init(.flexible(), spacing: 1.5),
        .init(.flexible(), spacing: 1.5),
        .init(.flexible(), spacing: 1.5)
    ]
    @State var isSelected: Int? = 0
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        VStack {
            Text("Category")
                .font(.setFamily(.bold, size: 14))
                .padding(.leading, 10)
            LazyVGrid(columns: gridItems, spacing: 20, content: {
                ForEach(0 ..< CategoryFilter.catFilterArray.count) { index in
                    CategoryFilterView(isSelected: $isSelected, category: CategoryFilter.catFilterArray[index], index: index)
                }
            })
        }
    }
}

#Preview {
    CategoryGridView()
}
