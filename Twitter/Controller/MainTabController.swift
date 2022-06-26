//
//  MainTabController.swift
//  Twitter
//
//  Created by Артур Дохно on 26.06.2022.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
        tabBar.tintColor = .white
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        
        let feed = FeedController()
        feed.tabBarItem.image = UIImage(systemName: "house")
        
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        let notification = NotificationsController()
        notification.tabBarItem.image = UIImage(systemName: "suit.heart")
        
        let conversation = ConversationsController()
        conversation.tabBarItem.image = UIImage(systemName: "envelope")
        
        viewControllers = [feed, explore, notification, conversation]
    }
    
}
