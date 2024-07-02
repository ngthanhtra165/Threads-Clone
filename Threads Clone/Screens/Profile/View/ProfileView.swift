//
//  ProfileView.swift
//  Threads Clone
//
//  Created by Macbook on 24/06/2024.
//

import SwiftUI

struct ProfileView: View {
    var isFollowing: Bool
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                HStack(alignment: .top, spacing: 8) {
                    
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing : 4) {
                            Text("Nguyen Thanh Tra")
                                .fontWeight(.semibold)
                                .font(.title2)
                            
                            Text("thanh tra dep trai")
                                .font(.subheadline)
                        }
                        Text("Cuu chuyen toan chuyen ha tinh , cuu doi tuyen quoc gia mon tin hoc")
                            .font(.footnote)
                        
                        Text("3 followers")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    CircularProfileImage(imageName: "app_logo")
                }
                
                
                Button {
                    
                } label: {
                    Text((isFollowing) ? "Following" : "Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor((isFollowing) ? .black: .white)
                        .frame(width: 352, height: 32)
                        .background((isFollowing) ? .white : .black)
                        .cornerRadius(8)
                }
                
                Spacer()
                
                ProfileFilterView()
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
        }
    }
}

