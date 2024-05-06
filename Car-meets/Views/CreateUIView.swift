//
//  CreateUIView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-03.
//

import SwiftUI

struct CreateUIView: View {
    @EnvironmentObject var manager: Manager
    var body: some View {
        NavigationStack {
            Text("Create UI View")
        }.environmentObject(manager)
    }
}

#Preview {
    CreateUIView().environmentObject(Manager())
}
