//
//  CircularProfileImage.swift
//  Threads Clone
//
//  Created by Macbook on 24/06/2024.
//

import SwiftUI

struct CircularProfileImage: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
            .clipShape(.circle)
    }
}

