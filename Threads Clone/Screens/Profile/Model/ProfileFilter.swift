//
//  ProfileFilter.swift
//  Threads Clone
//
//  Created by Macbook on 26/06/2024.
//

import Foundation

enum ProfileFilter: Int, Identifiable , CaseIterable {
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads:
            return "Threads"
        case .replies:
            return "Replies"
        
        }
    }
    
    var id: Int {
        return self.rawValue
    }
}
