//
//  UploadTweetViewModel.swift
//  Twitter
//
//  Created by Артур Дохно on 22.07.2022.
//

import UIKit

enum UploadTweetConfiguration {
    case tweet
    case reply(Tweet)
}

struct UploadTweetViewModel {
    
    let actionButtonTitle: String
    let placeholderText: String
    var shouldShowReplyLabel: Bool
    var replyText: String?
    
    init(config: UploadTweetConfiguration) {
        switch config {
            case .tweet:
                actionButtonTitle = "Tweet"
                placeholderText = "What's happening"
                shouldShowReplyLabel = false
            case .reply(let tweet):
                actionButtonTitle = "Reply"
                placeholderText = "Tweet you reply"
                shouldShowReplyLabel = true
                replyText = "Replying to @\(tweet.user.username)"
        }
    }
}

