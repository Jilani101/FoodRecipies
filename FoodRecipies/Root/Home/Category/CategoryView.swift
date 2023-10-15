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
    @EnvironmentObject var catVM: CategoryViewModel
    @State var selectedIndex: Int? = nil
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0 ..< self.catVM.categories.count, id: \.self) { index in
                    Button {
                        self.catVM.categories[index].selectedCat.toggle()
                        self.updateCat(at: index)
                    } label: {
                        Text(self.catVM.categories[index].name)
                            .font(.setFamily(.semibold, size: 11))
                            .foregroundStyle(self.catVM.categories[index].catColor)
//                            .foregroundStyle()
                            .padding()
                            .frame(height: 40)
                            .overlay {
                                if index == 0 {
                                    RoundedRectangle(cornerRadius: 12)
                                        .foregroundStyle(Colors.primary_80)
                                } else if index == self.selectedIndex {
                                    RoundedRectangle(cornerRadius: 12)
                                        .foregroundStyle(Colors.primary_80)
                                }
                            }
                    }
                }
            }
            .padding(.horizontal, 10)
        }
    }
    
    func updateCat(at index: Int) {
        for category in 0 ..< self.catVM.categories.count {
            if category != index {
                self.catVM.categories[index].catColor = Colors.primary_80
            } else {
                self.catVM.categories[index].catColor = Color.white
                print(index)
            }
        }
        
        self.selectedIndex = index
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
