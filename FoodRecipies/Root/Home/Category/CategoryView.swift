//
//  CategoryView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 11/10/23.
//

import SwiftUI

struct CategoryView: View {
    
    //-------------------------------------
    //MARK: - Variables
    //-------------------------------------
    @ObservedObject var catVM = CategoryViewModel()
    @State var selectedIndex: Int? = 0
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 20) {
                ForEach(0 ..< self.catVM.categories.count, id: \.self) { index in
                    let cat = self.catVM.categories[index]
                    Button {
                        self.selectedIndex = index
                    } label: {
                        Text(cat.name)
                            .font(.setFamily(.bold, size: 11))
                            .foregroundColor(self.selectedIndex == index ? Color.white : Colors.primary_80)
                            .padding()
                            .frame(height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(self.selectedIndex == index ? Colors.primary_100 : Color.clear)
                            )
                    }
                }
            }
//            .padding(.leading, 30)
        }
        .frame(height: 51)
    }
}

struct SelectedCategory: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    @EnvironmentObject var category: Categories
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        Text(category.name)
            .font(.setFamily(.semibold, size: 11))
            .foregroundStyle(category.catColor)
            .padding(.all, 15)
    }
}

#Preview {
    CategoryView()
        .environmentObject(CategoryViewModel())
}
