//
//  AuthUIView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-04.
//

import SwiftUI

struct AuthUIView: View {
    @State private var currentView: String = "login"
    @State private var isAuthenticated = false
    @StateObject var manager = Manager()

    
    var body: some View {
            if isAuthenticated {
                ContentView().environmentObject(manager)
            } else {
                if currentView == "login" {
                    LoginUIView(currentShowingView: $currentView, isAuthenticated: $isAuthenticated).environmentObject(manager)
                } else {
                    SignUpUIView(currentShowingView: $currentView, isAuthenticated: $isAuthenticated)
                        .transition(.slide).environmentObject(manager)
                }
            }
        }
}

#Preview {
    AuthUIView()
}
