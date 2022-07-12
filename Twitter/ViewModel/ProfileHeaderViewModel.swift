//
//  ProfileHeaderViewModel.swift
//  Twitter
//
//  Created by Артур Дохно on 12.07.2022.
//

import Foundation

enum ProfileFilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var description: String {
        switch self {
            case .tweets: return "Tweets"
            case .replies: return "Tweets & Replies"
            case .likes: return "Likes"
        }
    }
}
