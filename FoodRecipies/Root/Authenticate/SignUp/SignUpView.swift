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
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        VStack {
            // Title and subtitle
            VStack {
                Text("Create an account")
                    .font(.setFamily(.semibold, size: 20))
                Text("Let’s help you set up your account, \nit won’t take long.")
                    .font(.setFamily(.regular, size: 11))
                    .multilineTextAlignment(.leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            // form and terms button
            VStack(spacing: 20) {
                UserTextFieldsView(textFieldType: $name, textFieldTitle: "Name", textFieldPlaceholder: "Enter Name")
                UserTextFieldsView(textFieldType: $email, textFieldTitle: "Email", textFieldPlaceholder: "Enter Name")
                UserTextFieldsView(textFieldType: $password, textFieldTitle: "Password", textFieldPlaceholder: "Enter Name")
                UserTextFieldsView(textFieldType: $confirmPassword, textFieldTitle: "Confirm Password", textFieldPlaceholder: "Enter Name")
            }
            
            // signup button
            
            
            // or text
            
            
            // social signin
            
            
            // already have account singin button
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 30)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
