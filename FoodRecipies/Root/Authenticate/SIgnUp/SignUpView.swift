//
//  SignUpView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 18/09/23.
//

import SwiftUI

struct SignUpView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    @State private var isTermsTapped: Bool = false
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    Spacer()
                    // Heading text
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Create an account")
                            .font(.setFamily(.semibold, size: 20))
                        Text("Let’s help you set up your account, \nit won’t take long.")
                            .font(.setFamily(.regular, size: 14))
                            .multilineTextAlignment(.leading)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 25)
                    .padding(.top, 20)
                    
                    // User form text fields
                    VStack(spacing: 20) {
                        UserTextFieldsView(textFieldType: $name, textFieldTitle: "Name", textFieldPlaceholder: "Enter name", textFieldHeight: 55)
                        UserTextFieldsView(textFieldType: $name, textFieldTitle: "Email", textFieldPlaceholder: "Enter email", textFieldHeight: 55)
                        UserTextFieldsView(textFieldType: $name, textFieldTitle: "Password", textFieldPlaceholder: "Enter password", textFieldHeight: 55)
                        UserTextFieldsView(textFieldType: $name, textFieldTitle: "Confirm Password", textFieldPlaceholder: "Retype password", textFieldHeight: 55)
                    }
                    .padding(.top, 20)
                    
                    // terms and conditions
                    HStack(spacing: 10) {
                        Button {
                            self.isTermsTapped.toggle()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(self.isTermsTapped ? Colors.secondary_100 : Color.clear)
                                    .border(Colors.secondary_100)
                                    .frame(width: 17, height: 17)
    //                                .cornerRadius(4)
                                Image("icn_correct")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .scaledToFit()
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            }
                        }
                        
                        Text("Accept terms & Condition")
                            .font(.setFamily(.regular, size: 14))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Colors.secondary_100)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 30)
                    
                    // signUp button
                    NavigationLink {
                        HomeView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 20) {
                            Text("Sign Up")
                                .font(.setFamily(.bold, size: 16))
                                .foregroundColor(.white)
                            Image("icn_right_arrow")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                        .frame(width: 315, height: 60)
                        .background(Colors.primary_100)
                        .cornerRadius(10)
                        .padding(.top, -10)
                    }
                    .padding(.top, 20)
                    
                    // or text
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
                    .padding(.top, 10)
                    
                    // social buttons
                    HStack(spacing: 24) {
                        Button {
                            print("Google")
                        } label: {
                            Image("icn_google")
                                .frame(width: 44, height: 44)
                                .background(.white)
                                .cornerRadius(10)
                        }
                        
                        Button {
                            print("Facebook")
                        } label: {
                            Image("icn_facebook")
                                .frame(width: 44, height: 44)
                                .background(.white)
                                .cornerRadius(10)
                        }
                    }
                    .shadow(color: Colors.gray_4 ,radius: 3.5)
                    .padding(.top, 10)
                    
                    // already have account text
                    NavigationLink {
                        SignUpView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack {
                            Text("Already a member?")
                                .font(.setFamily(.medium, size: 14))
                                .foregroundColor(.black)
                            Text("Sign In")
                                .font(.setFamily(.medium, size: 14))
                                .foregroundColor(Colors.secondary_100)
                        }
                        .padding(.vertical, 15)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
