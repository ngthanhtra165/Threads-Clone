//
//  SplashScreenView.swift
//  Threads Clone
//
//  Created by Macbook on 17/06/2024.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 170)
                    .foregroundColor(.white)
                  
                Text("Welcome to MyApp")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.top, 40)
            }
        }
    }
}

//#Preview {
//    SplashScreenView()
//}
