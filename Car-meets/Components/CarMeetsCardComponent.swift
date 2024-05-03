//
//  CarMeetsCardView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-01.
//

import SwiftUI

struct CarMeetsCardComponent: View {
    @EnvironmentObject var manager: Manager
    var carMeet: CarMeetsModel
    var body: some View {
        ZStack {
            Color("kSecondary")
            
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading) {
                    Image(carMeet.image).resizable().frame(width: 155, height: 150).cornerRadius(12)
                    
                    Text(carMeet.title).font(.headline).padding(.vertical, 1).foregroundColor(.black)
                    
                    Text(carMeet.location).foregroundColor(.red).padding(.vertical, 0.5).font(.caption)
                    
                    Text("Time: \(carMeet.date)").bold().foregroundColor(.black)
                }
                
                Button{
                    manager.saveToBookMarks(carMeet: carMeet)
                } label: {
                    Image(systemName: "plus.diamond.fill").resizable().foregroundColor(Color("kPrimary"))
                        .frame(width: 35, height: 35)
                        .padding(.bottom)
                }
            }
        }.frame(width: 180, height: 240).cornerRadius(15)
    }
}

#Preview {
    CarMeetsCardComponent(carMeet: carMeetList[0]).environmentObject(Manager())
}
