//
//  ViewModifier.swift
//  Threads Clone
//
//  Created by Macbook on 18/06/2024.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray))
            .cornerRadius(10)
    }
}

struct StrongButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 16.0, *) {
            content
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                .background(.black)
                .cornerRadius(10)
                .padding(.horizontal, 20)
        } else {
            // Fallback on earlier versions
        }
    }
}
