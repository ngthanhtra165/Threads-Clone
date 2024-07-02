//
//  EditProfileView.swift
//  Threads Clone
//
//  Created by Macbook on 26/06/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct EditProfileView: View {
    @State private var bio = "Hoc sinh gioi quoc gia mon tin hoc cua chuyen ha tinh dinh cao nhat vu tru"
    @State private var link = ""
    @State private var isPrivateProfile = false
    
    var body: some View {
        NavigationStack {
            ZStack {

                Color(.systemGray)
                    .edgesIgnoringSafeArea([.bottom , .horizontal])
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)
                            
                            Text("Nguyen Thanh Tra")
                                .font(.footnote)
                        }
                        
                        Spacer()
                        
                        CircularProfileImage(imageName: "app_logo")
                    }
                    .padding(.top , 8)
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Bio")
                            .fontWeight(.semibold)
                        
                        TextField("Enter your bio ...", text: $bio, axis: .vertical)
                    }
                    .font(.footnote)
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Link")
                            .fontWeight(.semibold)
                        
                        TextField("Add link...", text: $link)
                    }
                    .font(.footnote)
                    
                    Divider()
                    
                    Toggle("Pivate profile", isOn: $isPrivateProfile)
                        .font(.footnote)
                    
                    Divider()
                }
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .cornerRadius(8)
                .padding()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Text("Cancel")
                            .font(.subheadline)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                }
            }
        }
    }
}

