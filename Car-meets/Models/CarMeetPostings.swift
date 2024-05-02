//
//  Product.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-01.
//

import Foundation

struct CarMeetPostings : Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var location: String
    var Date: String
}

var carMeetList = [
    CarMeetPostings(name: "Car Meet 1",
                    image: "cm1",
                    description: "Description of Car meet",
                    location: "Burnaby Mountain",
                    Date: "20th October 2024 5PM"),
    CarMeetPostings(name: "Car Meet 2",
                    image: "cm2",
                    description: "Description of Car meet",
                    location: "Burnaby Mountain",
                    Date: "20th October 2024 5PM"),
    CarMeetPostings(name: "Car Meet 3",
                    image: "cm2",
                    description: "Description of Car meet",
                    location: "Burnaby Mountain",
                    Date: "20th October 2024 5PM"),
    CarMeetPostings(name: "Car Meet 4",
                    image: "cm4",
                    description: "Description of Car meet",
                    location: "Burnaby Mountain",
                    Date: "20th October 2024 5PM"),
    CarMeetPostings(name: "Car Meet 5",
                    image: "cm5",
                    description: "Description of Car meet",
                    location: "Burnaby Mountain",
                    Date: "20th October 2024 5PM")
]
