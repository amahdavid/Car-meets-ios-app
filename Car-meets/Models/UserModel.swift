//
//  UserModel.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-03.
//

import Foundation

struct User {
    var firstName: String = ""
    var lastName: String = ""
    var location: String = ""
    var email: String = ""
    var image: String = ""
    var password: String = ""
}


var usersList = [
    User(firstName: "David Chika", lastName: "Amah-Nnachi", location: "Vancouver, BC", email: "amahchika@example.com", image: "profile")
]
