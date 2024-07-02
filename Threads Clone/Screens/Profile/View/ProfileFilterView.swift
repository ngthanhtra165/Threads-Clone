//
//  ProfileFilterView.swift
//  Threads Clone
//
//  Created by Macbook on 24/06/2024.
//

import SwiftUI

struct ProfileFilterView: View {
    @State private var selectedIndex = 0
    private var filterBarWidth: Double {
        return (UIScreen.main.bounds.width / CGFloat(ProfileFilter.allCases.count)) - 16.0
    }
    @Namespace var animation
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                ForEach(ProfileFilter.allCases) { filter in
                    VStack {
                        Text(filter.title)
                            .font(.subheadline)
                            .fontWeight((selectedIndex == filter.id) ? .semibold: .regular)
                            
                        if selectedIndex == filter.id {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: filterBarWidth , height: 1)
                                .matchedGeometryEffect(id: "item", in: animation)
                        } else {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: filterBarWidth , height: 1)
                        }
                    }
                    .foregroundColor(.black)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            selectedIndex = filter.id
                        }
                    }
                }
            }
            
            LazyVStack {
                ForEach(0 ... 10, id: \.self) { threads in
                    PostCell()
                }
            }
            
        }
        .padding(.vertical , 8)
    }
}
