//
//  NotificationUIView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-06.
//

import SwiftUI

struct NotificationUIView: View {
    @EnvironmentObject var manager: Manager

    var body: some View {
        NavigationStack {
            Text("Notification UI View")
        }.environmentObject(manager)
    }
}

#Preview {
    NotificationUIView().environmentObject(Manager())
}
