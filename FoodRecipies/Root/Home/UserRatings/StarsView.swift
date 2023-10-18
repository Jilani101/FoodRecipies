//
//  StarsView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/10/23.
//

import SwiftUI

struct StarsView: View {
    
    //-------------------------------------
    //MARK: - Variables
    //-------------------------------------
    var rating: CGFloat
    var maxRating: Int = 5

    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        let stars = HStack(spacing: 2) {
                    ForEach(0..<maxRating, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Colors.gray_4)
                    }
                }

                stars.overlay(
                    GeometryReader { g in
                        let width = rating / CGFloat(maxRating) * g.size.width
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .frame(width: width)
                                .foregroundColor(Colors.rating)
                        }
                    }
                    .mask(stars)
                )
    }
}

#Preview {
    StarsView(rating: 4.3)
}
