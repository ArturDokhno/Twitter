//
//  ConversationsController.swift
//  Twitter
//
//  Created by Артур Дохно on 26.06.2022.
//

import UIKit

class ConversationsController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Helpers

    func configureUI() {
        view.backgroundColor = .systemBackground
        navigationItem.title = "Message"
    }
}
