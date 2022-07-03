//
//  Constants.swift
//  Twitter
//
//  Created by Артур Дохно on 03.07.2022.
//

import Foundation
import Firebase
import FirebaseStorage

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_images")

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")
