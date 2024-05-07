//
//  SearchView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-01.
//

import SwiftUI

struct SearchComponent: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass").padding(.leading)
                
                TextField("Search for car meets", text: $search).padding().foregroundColor(.black)
            }.background(Color("kSecondary")).cornerRadius(12)
        }.padding(.horizontal)
    }
}

#Preview {
    SearchComponent()
}
