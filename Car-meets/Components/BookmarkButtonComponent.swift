//
//  bookmarkButton.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-03.
//

import SwiftUI

struct BookmarkButtonComponent: View {
    var numOfBookmarkedProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bookmark.fill").padding(5).foregroundColor(.black)
            if numOfBookmarkedProducts > 0 {
                Text("\(numOfBookmarkedProducts)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    BookmarkButtonComponent(numOfBookmarkedProducts: 1)
}
