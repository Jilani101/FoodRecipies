//
//  TimeFilterView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 22/10/23.
//

import SwiftUI

struct TimeFilterView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    @State var isSelected: Int? = 0
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text("Time")
                .font(.setFamily(.bold, size: 14))
                .padding(.leading, 10)
            LazyHStack {
                ForEach(0 ..< TimeFilter.timeFilterArray.count, id: \.self) { index in
                    let filterArr = TimeFilter.timeFilterArray[index]
                    Button {
                        print(filterArr.filterTime)
                        self.isSelected = index
                    } label: {
                        Text(filterArr.filterTime)
                            .font(.setFamily(.regular, size: 11))
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
                            .padding(.leading, 10)
                    }
                }
            }
        }
        .frame(height: 80)
    }
}

#Preview {
    TimeFilterView()
}
