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

        view.backgroundColor = .systemBackground
        configureViewControllers()
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        
        let feed = FeedController()
        let nav1 = templateNavigationController(image: UIImage(systemName: "house"),
                                                rootViewController: feed)
        
        let explore = ExploreController()
        let nav2 = templateNavigationController(image: UIImage(systemName: "magnifyingglass"),
                                                rootViewController: explore)
        
        let notification = NotificationsController()
        let nav3 = templateNavigationController(image: UIImage(systemName: "suit.heart"),
                                                rootViewController: notification)
        
        let conversation = ConversationsController()
        let nav4 = templateNavigationController(image: UIImage(systemName: "envelope"),
                                                rootViewController: conversation)
        
        viewControllers = [nav1, nav2, nav3, nav4]
    }
    
    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
    
}
