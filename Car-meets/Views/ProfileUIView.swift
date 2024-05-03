//
//  ProductUIView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-03.
//

import SwiftUI

import SwiftUI

struct ProfileUIView: View {
    var user: User
    @EnvironmentObject var manager: Manager
    var body: some View {
        NavigationStack {
            VStack {
                ProfileHeaderView(user: user)
                    .padding()
                Spacer()
            }
        }.navigationBarTitle("Profile").environmentObject(manager)
    }
}

#Preview {
    ProfileUIView(user: usersList[0]).environmentObject(Manager())
}

struct ProfileHeaderView: View {
    var user: User
    var body: some View {
        VStack {
            Image(user.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            
            Text(user.firstName + " " + user.lastName)
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            Text("Located in \(user.location)")
                .font(.headline)
                .foregroundColor(.gray)
            
            Text("email: \(user.email)")
                .font(.headline)
                .foregroundColor(.gray)
        }
        .onAppear() {
            print("user: \(user)")
        }
    }
}

