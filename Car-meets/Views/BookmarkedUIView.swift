//
//  BookmarkedUIView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-03.
//

import SwiftUI

struct BookmarkedUIView: View {
    @EnvironmentObject var manager: Manager
    var body: some View {
        ScrollView {
            if !manager.carMeets.isEmpty {
                ForEach(manager.carMeets, id: \.id) {
                    carMeet in BookmarkProductComponent(carMeet: carMeet)
                }
            } else {
                Text("Nothing saved")
            }
        }.navigationTitle(Text("Saved Car Meets")).padding(.top)
    }
}

#Preview {
    BookmarkedUIView().environmentObject(Manager())
}
