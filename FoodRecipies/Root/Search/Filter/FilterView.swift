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
    let screen = UIScreen.main.bounds
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // title
                Text("Filter search")
                    .font(.setFamily(.bold, size: 14))
                    .padding(.top, 31)
                // time
                VStack(alignment: .leading, spacing: 20) {
                    TimeFilterView()
                        .padding(.bottom, 20)
                        .padding(.leading, 20)
                    // rate
                    RateFilterView()
                        .padding(.leading, 5)
                }
                Spacer()
                
                // category
                
                // filter button
            }
        }
        .frame(width: screen.width, height: screen.height / 2)
        .background(Colors.gray_4)
        .modifier(CustomCornerRadius())
    }
}

#Preview {
    FilterView()
}
