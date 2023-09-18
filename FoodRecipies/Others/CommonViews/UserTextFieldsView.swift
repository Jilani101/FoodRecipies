//
//  UserTextFields.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/09/23.
//

import SwiftUI

struct UserTextFieldsView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    @Binding var textFieldType: String
    var textFieldTitle: String
    var textFieldPlaceholder: String
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        VStack(alignment: .leading) {
            Text(textFieldTitle)
                .font(.setFamily(.regular, size: 14))
                .padding(.leading, 25)
            TextFieldComponent(textFieldPlaceholder: textFieldPlaceholder, textType: $textFieldType)
        }
    }
}

struct UserTextFields_Previews: PreviewProvider {
    static var previews: some View {
        UserTextFieldsView(textFieldType: .constant(""), textFieldTitle: "Email", textFieldPlaceholder: "Enter email")
    }
}
