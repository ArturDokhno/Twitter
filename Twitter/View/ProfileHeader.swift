//
//  ProfileHeader.swift
//  Twitter
//
//  Created by Артур Дохно on 11.07.2022.
//

import UIKit

class ProfileHeader: UICollectionReusableView {
     
    // MARK: - Properties
    
    
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
