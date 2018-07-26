//
//  MessageEntity.swift
//  ChatView
//
//  Created by George Kyrylenko on 7/21/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

public class MessageEntity{
    public var text: String?
    public var file: Data?
    public var user: UserEntity?
    public var timeSend: String?
    public var createAt: Double?
    let mid: String
    
    init() {
        mid = UUID().uuidString
    }
    
    init(_text: String, _user: UserEntity) {
        mid = UUID().uuidString
        self.text = _text
        self.user = _user
        self.createAt = NSTimeIntervalSince1970
    }
    
    public init(_text: String, _user: UserEntity, _createAt: Double) {
        mid = UUID().uuidString
        self.text = _text
        self.user = _user
        self.createAt = _createAt
    }
    
    
}
