//
//  ImageSliderView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-01.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 0
    var imageSlides: [String] = ["cm1", "cm2", "cm3", "cm4", "cm5"]
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image(imageSlides[currentIndex]).resizable().frame(width: .infinity, height: 180).scaledToFit().cornerRadius(15)
            }
            HStack {
                ForEach(imageSlides.indices, id: \.self) { index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width: 10, height: 10)
                }
            }.padding()
        }.padding()
            .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) {
                timer in
                if self.currentIndex + 1 == self.imageSlides.count {
                    self.currentIndex = 0
                } else {
                    self.currentIndex += 1
                }
            }
        }
    }
}

#Preview {
    ImageSliderView()
}
