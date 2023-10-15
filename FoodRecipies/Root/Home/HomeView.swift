//
//  HomeView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 18/09/23.
//

import SwiftUI

struct HomeView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    @State var searchText: String = ""
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        NavigationStack {
            VStack {
                // header view
                HStack(spacing: 110) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Hello Jilani")
                            .font(.setFamily(.semibold, size: 20))
                        Text("What are you cooking today?")
                            .font(.setFamily(.regular, size: 11))
                            .foregroundStyle(Colors.gray_3)
                    }
                    
                    Image("profile_image")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .cornerRadius(12)
                }
                .padding(.bottom, 30)
                
                // search field  click to open search screen and filter button
                HStack(spacing: 20) {
                    NavigationLink {
                        SearchView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(lineWidth: 1.0)
                            .frame(width: 250, height: 40)
                            .foregroundStyle(Colors.gray_4)
                            .overlay {
                                HStack(spacing: 10) {
                                    Image(systemName: "magnifyingglass")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 18, height: 18)
                                    Text("Search recipe")
                                        .font(.setFamily(.regular, size: 13))
                                }
                                .foregroundStyle(Colors.gray_4)
                            }
                    }
                    
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
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            }
            .padding(.bottom, 15)
            
            // category wiht horizontal scrolling and title
            CategoryView()
                .environmentObject(CategoryViewModel())
                .background(.black)
            
            // reviews
            
            
        }
        .padding(.horizontal, 30)
//        .background(Color.red)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
