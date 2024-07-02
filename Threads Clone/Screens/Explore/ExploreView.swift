//
//  ExploreView.swift
//  Threads Clone
//
//  Created by Macbook on 19/06/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct ExploreView: View {
    @State private var search = ""
    
    var body: some View {
        NavigationStack {
                ScrollView {
                    LazyVStack {
                        ForEach(0 ... 10 , id: \.self) { thread in
                            VStack {
                                HStack(alignment: .top, spacing: 8) {
                                    CircularProfileImage(imageName: "app_logo")
                                    
                                    VStack(alignment: .leading, spacing : 8) {
                                        Text("Thanh Tra")
                                            .fontWeight(.semibold)
                                            .font(.footnote)
                                        
                                        Text("Nguyen Thanh Tra dep trai")
                                            .font(.caption)
                                    }
                                    .frame(maxWidth: .infinity)
                                    
                                    Button {
                                        
                                    } label: {
                                        Text("Follow")
                                            .fontWeight(.semibold)
                                            .font(.subheadline)
                                            .frame(width: 100, height: 32)
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color(.black),lineWidth : 1)
                                            }
                                    }
                                }
                                .padding(.vertical, 5)
                                .padding(.horizontal)
                                Divider()
                            }
                        }
                        
                    }
                }
                .navigationTitle("Search")
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text: $search, prompt: "Search")
            }
        }
    }

