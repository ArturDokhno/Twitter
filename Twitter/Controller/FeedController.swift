//
//  FeedController.swift
//  Twitter
//
//  Created by Артур Дохно on 26.06.2022.
//

import UIKit
import SDWebImage

class FeedController: UIViewController {
    
    // MARK: - Properties
    
    var user: User? {
        didSet { print("DEBUG: Did set user in feed controller..")}
    }
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .systemBackground
        
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
        
        let profileImageView = UIImageView()
        profileImageView.setDimensions(width: 32, height: 32)
        profileImageView.backgroundColor = .twitterBlue
        profileImageView.layer.cornerRadius = 32 / 2
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: profileImageView)
    }
}
