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
        NavigationStack {
            Text("Search UI View")
        }.environmentObject(manager)
    }
}

#Preview {
    SearchUIView().environmentObject(Manager())
}
