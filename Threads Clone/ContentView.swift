//
//  ContentView.swift
//  Threads Clone
//
//  Created by Macbook on 14/06/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct ContentView: View {
    @State private var showSplashScreen = true
    
    var body: some View {
        if showSplashScreen {
            SplashScreenView()
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        withAnimation {
                            showSplashScreen = false
                        }
                    }
                }
        } else {
            LoginView()
                .background(.white)
        }
    }
}

//#Preview {
//    ContentView()
//}
