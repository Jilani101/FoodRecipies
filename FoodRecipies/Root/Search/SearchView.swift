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
    @State var searchText: String = ""
    @State var isTextFieldTyping = false
    @State var moving = false
    
    //-------------------------------------
    //MARK: - View
    //-------------------------------------
    var body: some View {
        VStack {
            Spacer()
            HStack {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(lineWidth: 1.0)
                    .frame(width: 250, height: 40)
                    .foregroundStyle(Colors.gray_4)
                    .overlay {
                        HStack(spacing: 10) {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 18, height: 18)
                            TextField("Search recipe", text: $searchText)
                                .font(.setFamily(.regular, size: 13))
                                .foregroundColor(searchText == "" ? Color.black : Colors.gray_4)
                                .onTapGesture {
                                    self.isTextFieldTyping.toggle()
                                    self.moving.toggle()
                                }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 15)
                        .foregroundStyle(Colors.gray_4)
                    }
                Spacer()
                FilterButtonView()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
//            .offset(y: moving ? -20 : 30)
//            .animation(.interpolatingSpring(stiffness: 10, damping: 5), value: moving)
            .padding(.top, 20)
            .padding(.leading, 30)
            .padding(.bottom, 20)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                Text(self.isTextFieldTyping ? "Search Results" : "Recent Search")
                    .font(.setFamily(.bold, size: 16))
                    .padding(.leading, 30)
                    .animation(.easeIn, value: moving)
                SearchGridView()
            }
        }
        .navigationBarTitle(
            Text("Search recipes")
        )
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
                    .padding(.leading, 15)
            }
        }
//        .onAppear {
//            moving.toggle()
//        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
