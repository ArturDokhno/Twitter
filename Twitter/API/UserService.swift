//
//  UserService.swift
//  Twitter
//
//  Created by Артур Дохно on 04.07.2022.
//

import Foundation
import Firebase

struct UserService {
    static let shared = UserService()
    
    func fetchUser() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        REF_USERS.child(uid).observeSingleEvent(of: .value) { snapshot in
            guard let dictionary = snapshot.value as? [String: AnyObject] else { return }
           
            guard let username  = dictionary["username"] else { return }
            
            let user = User(uid: uid, dictionary: dictionary)
            
            print("DEBUG: Username is \(user.username)")
            print("DEBUG: Fullname is \(user.fullname)")
        }
    }
}
