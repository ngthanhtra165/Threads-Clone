//
//  SignUpView.swift
//  Threads Clone
//
//  Created by Macbook on 18/06/2024.
//

import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullname: String = ""
    @State private var username: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
                VStack {
                    Spacer()
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120 , height: 140)
                    
                    
                    VStack(spacing: 20) {
                        TextField("Enter the email", text: $email)
                            .modifier(TextFieldModifier())
                        
                        SecureField("Enter your password", text: $password)
                            .modifier(TextFieldModifier())

                        TextField("Enter the fullname", text: $fullname)
                            .modifier(TextFieldModifier())

                        TextField("Enter the username", text: $username)
                            .modifier(TextFieldModifier())
                    }
                    .padding(20)
            
                    Button {
                        print("Tap on sigup")
                    } label: {
                        Text("Sign Up")
                            .modifier(StrongButtonModifier())
                    }
                    Spacer()
                    
                    Divider()
                    Button {
                        dismiss()
                    } label: {
                        HStack(spacing: 3) {
                            Text("Already have an account?")
                                .foregroundColor(.black)
                            
                            Text("Sign in")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                        }
                        .padding(.vertical , 16)

                    }
                }
            }
        }
}

#Preview {
    SignUpView()
}
