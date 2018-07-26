//
//  ChatView.swift
//  ChatView
//
//  Created by George Kyrylenko on 7/19/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import UIKit


open class ChatViewController: UIViewController, UITextViewDelegate{
    
    let messagesTabel = UITableView()
    let messageText = UITextView()
    var sendButton = UIButton()
    
    var colorMyCloud = UIColor.blue
    var otherCloudsColor = UIColor.green
    
    var cloudTextColor = UIColor.black
    var cloudTextFont = UIFont()
    
    var textColor = UIColor.black
    var textFont = UIFont()
    
    var chanchTextColor = UIColor.white
    
    private var colorMyMessage: UIColor?
    private var colorUsersMessage: UIColor?
    
    var messages = [MessageEntity]()
    
    var me: UserEntity?
    
    var keyboardHeight: CGFloat?
    
    var countOfLines = 5
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        createChatUI()
        
       NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillClose), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
}

