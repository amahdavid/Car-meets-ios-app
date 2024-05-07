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
            ScrollView {
                VStack(spacing: 2)
                    {
                        ForEach(notificationsList) { notification in
                                NotificationComponent(notifications:notification)
                            }
                    }
                    .padding()
            }
        }.environmentObject(manager)
    }
}

#Preview {
    NotificationUIView().environmentObject(Manager())
}
