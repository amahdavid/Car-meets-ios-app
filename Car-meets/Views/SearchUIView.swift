//
//  SearchUIView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-03.
//

import SwiftUI

struct SearchUIView: View {
    @EnvironmentObject var manager: Manager
    var body: some View {
        VStack {
            SearchComponent().padding(.horizontal)
            Spacer()
            ScrollView {
                
                ForEach(carMeetList, id: \.id) {
                    carMeet in BookmarkProductComponent(carMeet: carMeet)
                }
            }
        }.environmentObject(manager)
    }
}

#Preview {
    SearchUIView().environmentObject(Manager())
}
