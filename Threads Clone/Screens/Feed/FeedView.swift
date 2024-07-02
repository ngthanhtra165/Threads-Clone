//
//  FeedView.swift
//  Threads Clone
//
//  Created by Macbook on 18/06/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct FeedView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 10 , id: \.self) { thread in
                        VStack {
                            PostCell()
                            Divider()
                        }
                    }
                    
                }
            }
            .refreshable {
                print("Reload the new feed")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.counterclockwise")
                    }
                }
            }
        }
    }
}


