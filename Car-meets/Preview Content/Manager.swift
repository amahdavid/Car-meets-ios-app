//
//  Manager.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-01.
//

import Foundation

class Manager: ObservableObject{
    @Published private(set) var carMeets: [CarMeetPostings] = []
    
    func saveToBookMarks(carMeet: CarMeetPostings) {
        carMeets.append(carMeet)
    }
    
    func removeFromBookMarks(carMeet: CarMeetPostings) {
        carMeets = carMeets.filter{ $0.id != carMeet.id }
    }

}
