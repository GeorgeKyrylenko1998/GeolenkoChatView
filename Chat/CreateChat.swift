//
//  CreateChat.swift
//  ChatView
//
//  Created by George Kyrylenko on 7/20/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import UIKit

extension ChatViewController{
    func createChatUI(){
        addTableView()
        
        addTextBox()
        
        addSendButton()
    }
    
    func addTableView(){
        self.messagesTabel.frame.size.height = self.view.frame.height - 51 - (self.navigationController?.navigationBar.frame.height ?? 0) - 10
        self.messagesTabel.frame.size.width = self.view.frame.width
        print("Table width: ", self.messagesTabel.frame.size.width)
        print("View width: ", self.view.frame.size.width)
        self.messagesTabel.frame.origin = CGPoint(x: 0, y: (self.navigationController?.navigationBar.frame.height ?? 0) + 15)
        
        self.messagesTabel.delegate = self
        self.messagesTabel.dataSource = self
        
        self.messagesTabel.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        
        self.messagesTabel.separatorStyle = .none
        
        self.view.addSubview(messagesTabel)
    }
    
    func addTextBox(){
        
        self.messageText.frame.origin = CGPoint(x: 5, y: self.view.frame.height - 47)
        
        messageText.font = textFont
        messageText.textColor = textColor
        self.messageText.frame.size = CGSize(width: self.view.frame.width - 51, height: textFont.pointSize + textFont.pointSize)
        
        //self.messageText.sizeToFit()
        
        self.messageText.translatesAutoresizingMaskIntoConstraints = true
        
        self.messageText.delegate = self
        
        self.messageText.layer.borderWidth = 1.0
        self.messageText.layer.cornerRadius = 5
        self.messageText.layer.borderColor = UIColor.black.cgColor
        self.messageText.backgroundColor = chanchTextColor
        
        self.view.addSubview(self.messageText)
    }
    
    func addSendButton(){
        self.sendButton.setTitle("Send", for: .normal)
        self.sendButton.setTitleColor(.blue, for: .normal)
        
        //self.sendButton.backgroundColor = .blue
        
        self.sendButton.frame.size.height = 40
        self.sendButton.frame.size.width = self.view.frame.width - 44
        
        self.sendButton.sizeToFit()
        
        self.sendButton.frame.origin = CGPoint(x: self.messageText.frame.origin.x + self.messageText.frame.size.width + 5, y: self.messageText.frame.origin.y)
        
        self.sendButton.addTarget(self, action: #selector(sendMessageAction), for: .touchUpInside)
        
        self.view.addSubview(sendButton)
    }
    
    @objc func sendMessageAction(sender: UIButton){
        if self.messageText.text == ""{
            return
        }
        
        if let mesProt = self as? MessageProtocol{
            let text = self.messageText.text ?? ""
            self.messageText.text = ""
            mesProt.sendMessage(message: MessageEntity(_text: text, _user: self.me!))
            addMessageUI(message: MessageEntity(_text: text, _user: self.me!))

        }
    }
    
    
}
