//
//  PostCell.swift
//  Threads Clone
//
//  Created by Macbook on 19/06/2024.
//

import SwiftUI

struct PostCell: View {
    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            CircularProfileImage(imageName: "app_logo")

            VStack(alignment: .leading, spacing: 12) {
                Text("Nguyen Thanh Tra")
                    .fontWeight(.semibold)
                    .font(.footnote)
                
                Text("Third prize in olympid mathematic of vietname. Please welcome")
                    .multilineTextAlignment(.leading)
                    .font(.caption)
                
                HStack(spacing: 16) {
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bubble.right")
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.rectanglepath")
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "paperplane")
                    }
                }
            }
            .frame(maxWidth: .infinity)
            
            HStack() {
                Text("10m")
                    .font(.caption)
                    .foregroundColor(Color(.systemGray3))
                
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(Color(.darkGray))
                }
                
            }
        }
        .padding(.vertical, 5)
        .padding(.horizontal)
        .foregroundColor(.black)
    }
}

