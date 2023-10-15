//
//  MainTabView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 18/09/23.
//

import SwiftUI

struct MainTabView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            SavedRecipeView()
                .tabItem {
                    Image(systemName: "bookmark")
                }
            NotificationView()
                .tabItem {
                    Image(systemName: "bell")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
                
        }.tint(.black)
    }
}


struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
