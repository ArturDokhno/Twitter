//
//  UploadTweetController.swift
//  Twitter
//
//  Created by Артур Дохно on 05.07.2022.
//

import UIKit

class UploadTweetController: UIViewController {
    
    // MARK: - Properties
    
    private let user: User
    
    private lazy var tweetButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .twitterBlue
        button.setTitle("Tweet", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(UIColor(named: "white"), for: .normal)
        
        button.frame = CGRect(x: 0, y: 0, width: 64, height: 32)
        button.layer.cornerRadius = 32 / 2
        
        button.addTarget(self, action: #selector(handleUploadTweet), for: .touchUpInside)
        
        return button
    }()
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.setDimensions(width: 40, height: 40)
        imageView.layer.cornerRadius = 40 / 2
        imageView.backgroundColor = .twitterBlue
        return imageView
    }()
    
    private let captionTextView = CaptionTextView()
    
    // MARK: - Lifecycle
    
    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        print("DEBUG: User is \(user.username)")
    }
    
    // MARK: - Selectors
    
    @objc func handleCancel() {
        dismiss(animated: true)
    }
    
    @objc func handleUploadTweet() {
        print("DEBUG: Upload tweet here..")
    }
    
    // MARK: - API
    
    
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        configureNavigationBar()
        
        let stack = UIStackView(arrangedSubviews: [profileImageView, captionTextView])
        stack.axis = .horizontal
        stack.spacing = 12
        
        view.addSubview(stack)
        stack.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor,
                     paddingTop: 16, paddingLeft: 16, paddingRight: 16)
        profileImageView.contentMode = .scaleAspectFill 
        
        profileImageView.sd_setImage(with: user.profileImageUrl, completed: nil)
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .white
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleCancel))
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: tweetButton)
    }
    
}
