//
//  LoginView.swift
//  Threads Clone
//
//  Created by Macbook on 17/06/2024ß
//

import SwiftUI

@available(iOS 16.0, *)
struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State var tapOnLogin: Int? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120 , height: 140)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    VStack(spacing: 20) {
                        TextField("Enter the email", text: $email)
                            .autocapitalization(.none)
                            .modifier(TextFieldModifier())

                        SecureField("Enter your password", text: $password)
                            .modifier(TextFieldModifier())
                    }
                    .padding(.horizontal, 20)
                    
                    NavigationLink {
                        Text("Forget the password")
                    } label: {
                        Text("Forget the password?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.trailing, 20)
                            .padding(.vertical)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                    NavigationLink(destination: ThreadsTabView(), tag: 1 , selection: $tapOnLogin) {
                        Button {
                            self.tapOnLogin = 1
                        } label: {
                            Text("Login")
                                .modifier(StrongButtonModifier())
                        }
                    }
                    Spacer()
                    
                    Divider()
                    NavigationLink {
                        SignUpView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 3) {
                            Text("Don't have an account?")                                
                                .foregroundColor(.black)
                            
                            Text("Sign up")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                        }
                        .padding(.vertical , 16)
                    }
                }
            }
        }
    }
}

fileprivate func setupNavigationBarAppearance() {
    let appearance = UINavigationBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = UIColor.black // Change to desired color
    
    // Apply the appearance to the navigation bar
    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
}

