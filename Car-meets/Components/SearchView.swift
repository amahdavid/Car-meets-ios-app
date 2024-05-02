//
//  SearchView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-01.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass").padding(.leading)
                
                TextField("Search For Car Meets", text: $search).padding()
            }.background(Color("kSecondary")).cornerRadius(12)
            
            Image(systemName: "camera").padding().foregroundColor(.white).background(Color("kPrimary")).cornerRadius(12)
        }.padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
