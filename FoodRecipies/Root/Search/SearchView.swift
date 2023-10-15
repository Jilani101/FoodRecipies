//
//  SearchView.swift
//  FoodRecipies
//
//  Created by jilani khokhar on 18/09/23.
//

import SwiftUI

struct SearchView: View {
    
    //-------------------------------------
    //MARK: - Variable
    //-------------------------------------
    @Environment(\.dismiss) var dismiss
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        VStack {
            Text("Search")
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
