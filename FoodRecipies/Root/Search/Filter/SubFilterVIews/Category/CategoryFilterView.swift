//
//  CategoryFilterView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 22/10/23.
//

import SwiftUI

struct CategoryFilterView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    @Binding var isSelected: Int?
    let category: CategoryFilter
    let index: Int?
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        Button {
            print(category.catFilterName)
            self.isSelected = index
        } label: {
            Text(category.catFilterName)
                .font(.setFamily(.regular, size: 12))
                .foregroundStyle(self.isSelected == index ? Color.white : Colors.primary_80)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Colors.primary_80, lineWidth: 1.0)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(self.isSelected == index ? Colors.primary_100 : Color.clear)
                        )
                )
        }
    }
}

#Preview {
    CategoryFilterView(isSelected: .constant(0), category: CategoryFilter.catFilterArray[0], index: 0)
}
