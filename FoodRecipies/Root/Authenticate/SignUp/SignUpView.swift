//
//  SignUpView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 29/09/23.
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
    @State var isTermsTapped: Bool = false
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        VStack {
            // Title and subtitle
            VStack(alignment: .leading) {
                Text("Create an account")
                    .font(.setFamily(.semibold, size: 20))
                Text("Let’s help you set up your account, \nit won’t take long.")
                    .font(.setFamily(.regular, size: 11))
                    .multilineTextAlignment(.leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            
            Spacer()
            // form field
            VStack(spacing: 20) {
                UserTextFieldsView(textFieldType: $name, textFieldTitle: "Name", textFieldPlaceholder: "Enter Name")
                UserTextFieldsView(textFieldType: $email, textFieldTitle: "Email", textFieldPlaceholder: "Enter Name")
                UserTextFieldsView(textFieldType: $password, textFieldTitle: "Password", textFieldPlaceholder: "Enter Name")
                UserTextFieldsView(textFieldType: $confirmPassword, textFieldTitle: "Confirm Password", textFieldPlaceholder: "Enter Name")
            }
            
            // check box terms button
            HStack {
                Button {
                    self.isTermsTapped.toggle()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(self.isTermsTapped ? Color.clear : Colors.secondary_100, lineWidth: 1)
                            .background(self.isTermsTapped ? Colors.secondary_100 : Color.clear)
                            .cornerRadius(5)
                            .frame(width: 17, height: 17)
                        Image("icn_check_mark")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundStyle(.white)
                    }
                }
                
                Text("Accept terms & Condition")
                    .font(.setFamily(.regular, size: 11))
                    .foregroundStyle(Colors.secondary_100)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 10)
            .padding(.horizontal, 25)
            
            Spacer()
            // signup button
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
            .padding(.top, 26)
            
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
            
            // already a member?
            HStack {
                Text("Already a member?")
                    .font(.setFamily(.medium, size: 14))
                Text("Sign In")
                    .font(.setFamily(.medium, size: 14))
                    .foregroundColor(Colors.secondary_100)
            }
            .padding(.top, 20)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
