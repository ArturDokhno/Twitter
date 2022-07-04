//
//  User.swift
//  Twitter
//
//  Created by Артур Дохно on 04.07.2022.
//

import Foundation

struct User {
    let fullname: String
    let email: String
    let username: String
    let profileUserUrl: String
    let uid: String
    
    init(uid: String, dictionary: [String: AnyObject]) {
        self.uid = uid
        
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.profileUserUrl = dictionary["profileUserUrl"] as? String ?? ""
    }
}
