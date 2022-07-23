//
//  ActionSheetViewModel.swift
//  Twitter
//
//  Created by Артур Дохно on 23.07.2022.
//

import Foundation

struct ActionSheetViewModel {
    
    private let user: User
    
    var option: [ActionSheetOptions] {
        var results = [ActionSheetOptions]()
        
        if user.isCurrentUser {
            results.append(.delete)
        } else {
            let followOption: ActionSheetOptions = user.isFallowed ? .unfollow(user) : .follow(user)
            results.append(followOption)
        }
        
        results.append(.report)
        
        return results
    }
    
    init(user: User) {
        self.user = user
    }
}

enum ActionSheetOptions {
    case follow(User)
    case unfollow(User)
    case report
    case delete
    
    var description: String {
        switch self {
            case .follow(let user):
                return "Follow @\(user.username)"
            case .unfollow(let user):
                return "Unfollow @\(user.username)"
            case .report:
                return "Report Tweet"
            case .delete:
                return "Delete Tweet"
        }
    }
}
