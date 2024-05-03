//
//  HomePageView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-03.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var manager: Manager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    AppBar()
                    SearchComponent()
                    ImageSliderComponent()
                    HStack {
                        Text("Newly Posted").font(.title2).fontWeight(.medium)
                        
                        Spacer()
                        
                        NavigationLink(destination:{
                            PostedCarMeetsUIView()
                        }, label: {
                            Image(systemName: "circle.grid.2x2.fill").foregroundColor(Color("kPrimary"))
                        })
                    }.padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(carMeetList, id: \.id) {
                                carMeet in NavigationLink{
                                    Text(carMeet.title)
                                } label: {
                                    CarMeetsCardComponent(carMeet: carMeet).environmentObject(manager)
                                }
                            }
                        }
                    }.padding(.horizontal)
                }
            }
        }.environmentObject(manager)
    }
}

#Preview {
    HomePageView().environmentObject(Manager())
}

struct AppBar: View {
    @EnvironmentObject var manager: Manager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill").resizable().frame(width: 20, height: 20).padding(.trailing)
                    
                    Text("Vancouver, BC").font(.title2).foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: BookmarkedUIView().environmentObject(manager)) {
                        BookmarkButtonComponent(numOfBookmarkedProducts: manager.carMeets.count)
                    }
                }
                Text("Find Car meets ...").font(.largeTitle .bold())
            }
        }.padding().environmentObject(Manager())
    }
}
