//
//  UserEntity.swift
//  ChatView
//
//  Created by George Kyrylenko on 7/21/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation


public class UserEntity{
    var uid: String?
    var name: String?
    var photoURL: URL?
    
    public init() {
    }
    
    public init(_uid: String, _name: String, _photo: String){
        uid = _uid
        name = _name
        photoURL = URL(string: _photo)
    }
    
    public init(_uid: String, _name: String, _photoURL: URL){
        uid = _uid
        name = _name
        photoURL = _photoURL
    }
}
