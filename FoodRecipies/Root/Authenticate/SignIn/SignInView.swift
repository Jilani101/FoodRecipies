//
//  SignInView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/09/23.
//

import SwiftUI

struct SignInView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    @State var email = ""
    @State var password = ""
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        VStack {
            // header text
            VStack(alignment: .leading) {
                Text("Hello,")
                    .font(.setFamily(.bold, size: 30))
                Text("Welcome Back!")
                    .font(.setFamily(.regular, size: 20))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 25)
            
            Spacer()
            // text fields
            VStack(spacing: 30) {
                UserTextFieldsView(textFieldType: $email, textFieldTitle: "Email", textFieldPlaceholder: "Enter email")
                UserTextFieldsView(textFieldType: $email, textFieldTitle: "Password", textFieldPlaceholder: "Enter password")
            }
            
            // forgot button
            Button {
                print("Forgot password")
            } label: {
                Text("Forgot Password?")
                    .font(.setFamily(.regular, size: 11))
                    .foregroundColor(Colors.secondary_100)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 25)
            .padding(.top, 10)
            
            // sign in button
            NavigationLink {
                SignInView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack(spacing: 20) {
                    Text("Sign In")
                        .font(.setFamily(.bold, size: 16))
                        .foregroundColor(.white)
                    Image("icn_right_arrow")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                .frame(maxWidth: 315, maxHeight: 50)
                .background(Colors.primary_100)
                .cornerRadius(10)
            }
            .padding(.top, 25)
            
            // or sign in with text
            HStack {
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 4) - 40, height: 0.5)
                Text("Or Sign in With")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 4) - 40, height: 0.5)
            }
            .foregroundColor(.gray)
            .padding(.top, 20)
            
            // social signin
            HStack(spacing: 24) {
                Button {
                    print("Google")
                } label: {
                    Image("icn_google")
                        .frame(maxWidth: 44, maxHeight: 44)
                        .background(.white)
                        .cornerRadius(10)
                }
                
                Button {
                    print("Facebook")
                } label: {
                    Image("icn_facebook")
                        .frame(maxWidth: 44, maxHeight: 44)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
            .shadow(color: Colors.gray_4 ,radius: 3.5)
            .padding(.top, 20)
            Spacer()
            
            // signup text
            HStack {
                Text("Don’t have an account?")
                    .font(.setFamily(.medium, size: 14))
                Text("Sign up")
                    .font(.setFamily(.medium, size: 14))
                    .foregroundColor(Colors.secondary_100)
            }
            .padding(.bottom, 55)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
