//
//  CardDetailsView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-03.
//

import SwiftUI

struct CardDetailsView: View {
    var carMeet: CarMeetsModel
    private let dateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            formatter.timeStyle = .short
            return formatter
        }()
    
    var body: some View {
        ScrollView {
            ZStack {
                Color.white
                
                VStack(alignment: .leading) {
                    ZStack(alignment: .topTrailing) {
                        Image(carMeet.image)
                            .resizable()
                            .frame(maxHeight: 300)
                            .cornerRadius(20)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 63)
                            .padding(.trailing, 20)
                            .foregroundColor(.red)
                    }
                    VStack(alignment: .leading) {
                        HStack{
                            Text(carMeet.title)
                                .font(.title2 .bold())
                            
                            Spacer()
                            
                            Text(dateFormatter.string(from: carMeet.date))
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .foregroundColor(Color(.red))
                                .cornerRadius(12)
                        }.padding(.vertical)
                        
                        Text("Description")
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        Text(carMeet.description)
                        
                        Text("Location: \(carMeet.location)")
                            .foregroundColor(Color(.red))
                        
                        HStack(spacing: 10) {
                            ForEach(0..<5) { index in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.yellow)
                            }
                            Text("(5)")
                                .foregroundColor(.gray)
                        }.padding(.vertical)
                    }
                }.padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    CardDetailsView(carMeet: carMeetList[4])
}
