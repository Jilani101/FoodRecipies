//
//  TextFieldComponent.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 17/09/23.
//

import SwiftUI

struct TextFieldComponent: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    let textFieldPlaceholder: String
    @Binding var textType: String
    var height: CGFloat
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        TextField("\(textFieldPlaceholder)", text: $textType)
            .textInputAutocapitalization(.never)
            .modifier(TextFieldModifier(height: height))
    }
}

struct TextFieldComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldComponent(textFieldPlaceholder: "Enter email", textType: .constant(""), height: 45)
    }
}
