//
//  ThreadsTabView.swift
//  Threads Clone
//
//  Created by Macbook on 18/06/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct ThreadsTabView: View {
    @State private var selectionTabBar = 0
    @State private var showCreateThreadView = false
    
    var body: some View {
        TabView(selection: $selectionTabBar) {
            FeedView()
                .tabItem {
                    Image(systemName: (selectionTabBar == 0) ? "house.fill" : "house")
                        .environment(\.symbolVariants, (selectionTabBar == 0) ? .fill : .none)
                }
                .onAppear { selectionTabBar = 0 }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .environment(\.symbolVariants, (selectionTabBar == 1) ? .fill : .none)
                    
                }
                .onAppear { selectionTabBar = 1 }
                .tag(1)
            
            Text("")
                .tabItem {
                    Image(systemName: (selectionTabBar == 2) ? "plus" : "plus")
                        .environment(\.symbolVariants, (selectionTabBar == 2) ? .fill : .none)
                }
                .onAppear { selectionTabBar = 2 }
                .tag(2)
            
            EditProfileView()
                .tabItem {
                    Image(systemName: (selectionTabBar == 3) ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, (selectionTabBar == 3) ? .fill : .none)
                }
                .onAppear { selectionTabBar = 3 }
                .tag(3)
            
            ProfileView(isFollowing: false)
                .tabItem {
                    Image(systemName: (selectionTabBar == 4) ? "person.fill" : "person")
                        .environment(\.symbolVariants, (selectionTabBar == 4) ? .fill : .none)
                }
                .onAppear { selectionTabBar = 4 }
                .tag(4)
            
        }
        .onChange(of: selectionTabBar, perform: { newValue in
            showCreateThreadView = selectionTabBar == 2
        })
        .sheet(isPresented: $showCreateThreadView, onDismiss: {
            selectionTabBar = 0
        }, content: {
            CreateThreadsView()
        })
        .tint(.black)
        .navigationBarBackButtonHidden(true)
    }
}
