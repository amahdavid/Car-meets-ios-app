//
//  NotificationModel.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-06.
//

import Foundation


struct NotificationModel : Identifiable {
    var id = UUID()
    var notificationText: String = ""
    var image: String = ""
}

var notificationsList = [
    NotificationModel(notificationText: "New car meet posted!", image: "cm1"),
    NotificationModel(notificationText: "New car meet posted!", image: "cm1"),
    NotificationModel(notificationText: "New car meet posted!", image: "cm1"),
    NotificationModel(notificationText: "New car meet posted!", image: "cm1"),
    NotificationModel(notificationText: "New car meet posted!", image: "cm1"),
    NotificationModel(notificationText: "New car meet posted!", image: "cm1")
]
