//
//  NotificationComponent.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-06.
//

import SwiftUI

struct NotificationComponent: View {
    @EnvironmentObject var manager: Manager
    var notifications: NotificationModel

    var body: some View {
        HStack(spacing: 20) {
            Image(notifications.image).resizable().aspectRatio(contentMode: .fit).frame(width: 70).cornerRadius(9)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(notifications.notificationText).bold()
            }.padding()
            
            Spacer()
            
            Image(systemName: "ellipsis.rectangle").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).onTapGesture {
                // figure out some logic
            }
        }.padding(.horizontal).background(Color("kSecondary")).cornerRadius(12).frame(width: .infinity, alignment: .leading).padding()
    }
}

#Preview {
    NotificationComponent(notifications: notificationsList[0]).environmentObject(Manager())
}
