//
//  ContentView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-04-29.
//

import SwiftUI

struct ContentView: View {
    // whenever the app is open it redirects to the home page
    @State var currentTab: Tab = .Home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

enum Tab: String, CaseIterable {
    case Home = "house"
    case Search = "magnifyingglass.circle"
    case Notifications = "bell"
    case Saved = "saved"
    case Profile = "person"
    
    var TabName: String {
        switch self {
        case .Home:
            return "Home"
        case .Search:
            return "Search"
        case .Notifications:
            return "Notifications"
        case .Saved:
            return "Saved"
        case .Profile:
            return "Profile"
        }
    }
}
