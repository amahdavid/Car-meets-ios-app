//
//  Manager.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-01.
//

import Foundation

class Manager: ObservableObject{
    @Published private(set) var carMeets: [CarMeetsModel] = []
    @Published private(set) var notifications: [NotificationModel] = []
    
    func saveToBookMarks(carMeet: CarMeetsModel) {
        carMeets.append(carMeet)
    }
    
    func removeFromBookMarks(carMeet: CarMeetsModel) {
        carMeets = carMeets.filter{ $0.id != carMeet.id }
    }

}
