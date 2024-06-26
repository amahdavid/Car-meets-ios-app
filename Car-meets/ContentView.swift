//
//  ContentView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-04-29.
//

import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .Home
    @StateObject var manager = Manager()
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
    
    var body: some View {
        
        TabView(selection: $currentTab) {
            HomePageView().tag(Tab.Home)
            SearchUIView().tag(Tab.Search)
            CreateUIView().tag(Tab.Create)
            NotificationUIView().tag(Tab.Notifications)
            ProfileUIView(user: usersList[0]).tag(Tab.Profile)
        }
        .overlay(HStack(spacing: 0){
            ForEach(Tab.allCases, id: \.rawValue){
                tab in TabButton(tab: tab)
            }
            .padding(.vertical)
            .padding(.bottom, getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom - 15))
            .background(Color("kPrimary"))
        },
                 alignment: .bottom
        ).ignoresSafeArea(.all, edges: .bottom)
    }
    
    func TabButton(tab: Tab) -> some View {
        GeometryReader {proxy in Button(action: {
            withAnimation(.spring()) {
                currentTab = tab
            }
        }, label: {
            VStack(spacing: 0) {
                Image(systemName: currentTab == tab ? tab.rawValue + ".fill": tab.rawValue).resizable().foregroundColor(.black).aspectRatio(contentMode: .fit).frame(width: 25, height: 25).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(ZStack{
                    if currentTab == tab {
                        MaterialEffect(style: .light).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).matchedGeometryEffect(id: "Tab", in: animation)
                        
                        Text(tab.TabName).foregroundColor(.black).font(.footnote).padding(.top, 50)
                    }
                }).contentShape(Rectangle()).offset(y: currentTab == tab ? -15 : 0)
            }
        })}.frame(height: 20)
    }
}

#Preview {
    ContentView().environmentObject(Manager())
}

enum Tab: String, CaseIterable {
    case Home = "house"
    case Search = "magnifyingglass.circle"
    case Create = "plus.circle"
    case Notifications = "bell"
    case Profile = "person"
    
    var TabName: String {
        switch self {
        case .Home:
            return "Home"
        case .Search:
            return "Search"
        case .Create:
            return "Create"
        case .Notifications:
            return "Notifications"
        case .Profile:
            return "Profile"
        }
    }
}

extension View {
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as?
                UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        
        return safeArea
    }
}

struct MaterialEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}
