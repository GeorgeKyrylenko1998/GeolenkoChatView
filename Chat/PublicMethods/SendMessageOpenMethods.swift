//
//  SendMessageOpenMethod.swift
//  ChatView
//
//  Created by George Kyrylenko on 7/21/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation


public extension ChatViewController{
    
//    public func sendMessage(text: String){
//        
//    }
    
    public func sendData(data: Data){
        
    }

    public func sendMessageStatus(status: Bool){
        
    }
    
    public func AddMessages(messages: [MessageEntity]){
        self.messages += messages
        self.messagesTabel.reloadData()
    }
    
    public func addMessage(message: MessageEntity){
        addMessageUI(message: message)
    }
}
