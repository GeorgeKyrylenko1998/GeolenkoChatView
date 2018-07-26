//
//  MessagesPrivateMethods.swift
//  ChatView
//
//  Created by George Kyrylenko on 7/21/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

extension ChatViewController{
    func addMessageUI(message: MessageEntity){
        self.messages.insert(message, at: 0)
        if message.user?.uid == me?.uid{
            self.messagesTabel.insertRows(at: [IndexPath(row: 0, section: 0)], with: .left)
        } else {
            self.messagesTabel.insertRows(at: [IndexPath(row: 0, section: 0)], with: .right)
        }
       // self.messagesTabel.reloadData()
    }
    
    func getOldMessagesUI(){
        getOldMessages()
    }
    
    func sendDataUI(data: Data){
        
    }
}
