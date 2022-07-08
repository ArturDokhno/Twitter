//
//  TweetCell.swift
//  Twitter
//
//  Created by Артур Дохно on 08.07.2022.
//

import UIKit

class TweetCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}