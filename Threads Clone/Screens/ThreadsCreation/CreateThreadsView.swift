//
//  CreateThreadsView.swift
//  Threads Clone
//
//  Created by Macbook on 01/07/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct CreateThreadsView: View {
    @State private var caption = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularProfileImage(imageName: "app_logo")
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Nguyen Thanh Tra")
                            .fontWeight(.semibold)
                        
                        TextField("Start a thread", text: $caption , axis: .vertical)
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if !caption.isEmpty {
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancel")
                            .font(.subheadline)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Text("Post")
                            .opacity(caption.isEmpty ? 0.5 : 1)
                            .disabled(caption.isEmpty)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                }
            }
        }
    }
}

