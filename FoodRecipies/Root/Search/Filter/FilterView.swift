//
//  FilterView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 20/10/23.
//

import SwiftUI

struct FilterView: View {
    
    //-------------------------------------
    //MARK: - Variables
    //-------------------------------------
    
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        ZStack {
            ZStack {
                Colors.gray_4
                    .ignoresSafeArea(edges: .bottom)
            }
            .modifier(CustomCornerRadius())
            VStack {
                // title
                Text("Filter search")
                    .font(.setFamily(.bold, size: 14))
                Spacer()
                // time
                TimeFilterView()
                
                // rate
                
                // category
                
                // filter button
            }
        }
    }
}

#Preview {
    FilterView()
}
