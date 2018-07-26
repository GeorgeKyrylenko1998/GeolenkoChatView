//
//  ChatOpenMethods.swift
//  ChatView
//
//  Created by George Kyrylenko on 7/19/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import UIKit


public extension ChatViewController{
    
    
    public func setTitile(title: String){
        self.title = title
    }
    
    public func addLeftNavigationView(view: UIView){
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: view)
    }
    
    public func setBackgroundColor(color: UIColor){
        self.view.backgroundColor = color
    }
    
    public func setUserCloudColor(colr: UIColor){
        self.colorMyCloud = colr
    }
    
    public func setUsersCloudColor(colr: UIColor){
        self.otherCloudsColor = colr
    }
    
    public func setCloudTextColor(color: UIColor){
        cloudTextColor = color
    }
    
    public func setTextColor(color: UIColor){
        textColor = color
    }
    
    public func setCloudTextFont(font: UIFont){
        cloudTextFont = font
    }
    
    public func setTextFont(font: UIFont){
        textFont = font
    }
    
    public func setEditingTextColor(color: UIColor){
        chanchTextColor = color
    }
    
    public func setNewMessages(){
        
    }
    
    public func setNewMessage(){
        
    }
    
    public func getOldMessages(){
        
    }
 
    public func addCurrentUser(user: UserEntity){
        self.me = user
    }
    
    public func setCountOfLines(lines: Int){
        self.countOfLines = lines
    }
}
