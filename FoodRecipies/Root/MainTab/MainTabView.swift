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
        VStack {
            Spacer()
            
            ZStack {
                TabView {
                    
                }
            }
        }
        .background(Colors.primary_100)
    }
}


struct BottomTab: View {
    var body: some View {
        HStack {
            Button {
                print("Home")
            } label: {
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 25, height: 25)
            }.foregroundColor(.black)
            
            Spacer(minLength: 12)
            
            Button {
                print("search")
            } label: {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
            }.foregroundColor(.black)
            
            Spacer()
                .frame(width: 110)
            
            Button {
                print("profile")
            } label: {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 25, height: 25)
            }.foregroundColor(.black)
            
            Spacer()

            Button {
                print("bell")
            } label: {
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 25, height: 25)
            }.foregroundColor(.black)
        }
    }
}

struct Curve: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            path.addArc(
                center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 55),
                radius: 40,
                startAngle: .zero,
                endAngle: .init(degrees: 180),
                clockwise: true)
            path.addLine(to: CGPoint(x: 0, y: 55))
        }
        .fill(Color.white)
        .rotationEffect(.init(degrees: 180))
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
