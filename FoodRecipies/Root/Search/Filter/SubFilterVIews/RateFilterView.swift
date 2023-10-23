//
//  RateFilterView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 22/10/23.
//

import SwiftUI

struct RateFilterView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    @State var isSelected: Int? = 0
    private let screen = UIScreen.main.bounds
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Rate")
                .font(.setFamily(.bold, size: 14))
                .padding(.leading, 20)
            LazyHStack(spacing: 10) {
                ForEach(0 ..< RateFilter.rateFilterArray.count, id: \.self) { index in
                    let rateFilter = RateFilter.rateFilterArray[index]
                    Button {
                        print(rateFilter.filterRate)
                        self.isSelected = index
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Colors.primary_80, lineWidth: 1.0)
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(
                                            self.isSelected == index ? Colors.primary_100 : Color.clear
                                        )
                                )
                            HStack(spacing: 10) {
                                Text(rateFilter.filterRate)
                                    .font(.setFamily(.regular, size: 16))
                                    .foregroundStyle(self.isSelected == index ? Color.white : Colors.primary_80)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 16, height: 16)
                                    .foregroundStyle(self.isSelected == index ? Color.white : Colors.primary_80)
                            }
                            .padding(.all, 10)
                        }
                        .frame(height: 30)
                    }
                }
            }
            .padding(.horizontal)
        }
        .frame(height: 80)
    }
}

#Preview {
    RateFilterView()
}
