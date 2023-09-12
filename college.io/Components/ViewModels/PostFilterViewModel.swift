//
//  PostFilterViewModel.swift
//  college.io
//
//  Created by Aarish on 06/09/23.
//

import Foundation
enum PostFilterViewModel:  Int, CaseIterable {
    case posts
    case ads
    
    var title: String {
        switch self {
            case .posts: return "Posts"
            case .ads: return "Ads"
        }
    }
}
