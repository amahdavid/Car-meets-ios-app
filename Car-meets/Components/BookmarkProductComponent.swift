//
//  BookmarkProductView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-03.
//

import SwiftUI

struct BookmarkProductComponent: View {
    @EnvironmentObject var manager: Manager
    var carMeet: CarMeetPostings
    var body: some View {
        HStack(spacing: 20) {
            Image(carMeet.image).resizable().aspectRatio(contentMode: .fit).frame(width: 70).cornerRadius(9)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(carMeet.title).bold()
                
                Text(carMeet.date).bold()

            }.padding()
            
            Spacer()
            
            Image(systemName: "trash").foregroundColor(.red).onTapGesture {
                manager.removeFromBookMarks(carMeet: carMeet)
            }
        }.padding(.horizontal).background(Color("kSecondary")).cornerRadius(12).frame(width: .infinity, alignment: .leading).padding()
        
    }
}

#Preview {
    BookmarkProductComponent(carMeet: carMeetList[3]).environmentObject(Manager())
}
