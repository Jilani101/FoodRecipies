//
//  SplashView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/09/23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("img_splash")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity,height: UIScreen.main.bounds.height + 30)
                VStack {
                    Spacer()
                    
                    // header img with text
                    VStack(alignment: .center) {
                        Image("icn_chef_hat")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 79, height: 79)
                        Text("100K+ Premium Recipe ")
                            .font(.setFamily(.bold))
                            .padding(.top, 14)
                    }
                    Spacer()
                    
                    // middle view
                    VStack {
                        Text("Get \nCooking")
                            .font(.setFamily(.semibold, size: 50))
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 10)
                        Text("Simple way to find Tasty Recipe")
                            .font(.setFamily(.regular, size: 16))
                    }
                    
                    NavigationLink {
                        SignInView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 15) {
                            Text("Start Cooking")
                                .font(.setFamily(.bold, size: 16))
                            Image("icn_right_arrow")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                        .frame(width: 245, height: 45)
                        .background(Colors.primary_100)
                        .cornerRadius(8)
                    }
                    .padding(.top, 60)
                    Spacer()
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
