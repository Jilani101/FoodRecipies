//
//  FilterButtonView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 20/10/23.
//

import SwiftUI

struct FilterButtonView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        Button {
            print("Filter")
        } label: {
            ZStack {
                Rectangle()
                    .fill(Colors.primary_100)
                    .frame(width: 42, height: 42)
                    .cornerRadius(12)
                Image("icn_filter")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
            }
        }
        .padding(.trailing, 37)
    }
}

#Preview {
    FilterButtonView()
}
