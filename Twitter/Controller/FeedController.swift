//
//  FeedController.swift
//  Twitter
//
//  Created by Артур Дохно on 26.06.2022.
//

import UIKit

class FeedController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .systemBackground
        
        let imageView = UIImageView(image: UIImage(named: "twitter"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
}
