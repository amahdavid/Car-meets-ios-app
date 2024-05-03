//
//  PostedCarMeetsUIView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-03.
//

import SwiftUI

struct PostedCarMeetsUIView: View {
    @EnvironmentObject var manager: Manager
    
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(carMeetList, id: \.id) {
                        posting in CarMeetsCardComponent(carMeet: posting)
                    }
                }.padding()
            }.navigationTitle(Text("Posted Car Meets"))
        }
    }
}

#Preview {
    PostedCarMeetsUIView()
}
