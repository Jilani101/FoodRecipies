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
                Spacer()
                //MARK: - Header view
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Hello Jilani")
                            .font(.setFamily(.semibold, size: 20))
                        Text("What are you cooking today?")
                            .font(.setFamily(.regular, size: 11))
                            .foregroundStyle(Colors.gray_3)
                    }
                    Spacer()
                    Image("profile_image")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .cornerRadius(12)
                        .padding(.trailing, 37)
                }
                .padding(.leading, 30)
                .padding(.bottom, 30)
                
                //MARK: - Search field
                HStack {
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
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 15)
                                .foregroundStyle(Colors.gray_4)
                            }
                    }
                    Spacer()
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
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
                .padding(.bottom, 15)
                
                //MARK: - Category view
                CategoryView()
                    .environmentObject(CategoryViewModel())
                    .padding(.bottom, 15)
                    .padding(.leading, 30)
                
                ScrollView {
                    //MARK: - Recipes
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(Recipes.recipes) { recp in
                                RecipeCardView(recipe: recp)
                            }
                        }
                        .padding(.top, 75)
                    }
                    .padding(.top, 10)
                    .padding(.trailing, 20)
                    .padding(.bottom, 20)
                    Spacer()
                    
                    //MARK: - New Recipes by Creator
                    VStack(alignment: .leading, spacing: 5) {
                        // Title
                        Text("New Recipes")
                            .font(.setFamily(.bold, size: 20))
                            .foregroundStyle(Colors.black)
                            .padding(.leading, 30)
                        
                        // User recipe card view
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(Recipes.recipes) { recp in
                                    UserRecipeCardView(recipe: recp)
                                }
                            }
                            .padding(.top, 50)
                            .padding(.bottom, 30)
                        }
                    }
                }
                //            .padding(.leading, 30)
                .padding(.bottom, 15)
                
                Spacer()
                
            }
        }
        //        .padding(.leading, 25)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
