//
//  MyMessageCloud.swift
//  ChatView
//
//  Created by George Kyrylenko on 7/22/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation


extension ChatViewController{
    func getMyCloud(message: MessageEntity) -> UIView{
        let myCloud = UIView()
        
        myCloud.backgroundColor = self.colorMyCloud
        myCloud.layer.cornerRadius = 5
        if #available(iOS 11.0, *) {
            myCloud.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        } else {
            // Fallback on earlier versions
        }
        
        let text = UILabel()
        
        text.font = cloudTextFont
        text.textColor = cloudTextColor
        text.numberOfLines = 0
        
        text.frame.size.width = (self.view.frame.size.width/3.0) * 2.0
        
        
        text.text = message.text
        
        text.sizeToFit()
        
        myCloud.frame.size = CGSize(width: text.frame.size.width + 10, height: text.frame.size.height + 10)
        
        text.center = myCloud.center
        
        myCloud.addSubview(text)
        
        return myCloud
    }
}
