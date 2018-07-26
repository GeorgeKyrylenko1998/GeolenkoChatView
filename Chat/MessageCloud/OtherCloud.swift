//
//  OtherCloud.swift
//  ChatView
//
//  Created by George Kyrylenko on 7/24/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import Kingfisher

extension ChatViewController{
    
    func getUserCloud(message: MessageEntity) -> UIView{
        let cloud = UIView()
        let messageView = UIView()
        let userPhoto = UIImageView()
        
        messageView.backgroundColor = self.otherCloudsColor
        messageView.layer.cornerRadius = 5
        
        userPhoto.frame.size = CGSize(width: 30, height: 30)
        userPhoto.layer.cornerRadius = 15
        userPhoto.clipsToBounds = true
        
        userPhoto.contentMode = .scaleAspectFill
        if #available(iOS 11.0, *) {
            messageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        } else {
            // Fallback on earlier versions
        }
        
        userPhoto.kf.setImage(with: message.user?.photoURL)
        
        let text = UILabel()
        text.numberOfLines = 0
        
        text.frame.size.width = (self.view.frame.size.width/3.0) * 2.0
        
        text.text = message.text
        text.font = cloudTextFont
        text.textColor = cloudTextColor
        
        text.sizeToFit()
        
        messageView.frame.size = CGSize(width: text.frame.size.width + 10, height: text.frame.size.height + 10)
        
        text.center = messageView.center
        
        userPhoto.frame.origin.x = 5
        userPhoto.frame.origin.y = 0
        
        messageView.addSubview(text)
        
        messageView.frame.origin.x = 40
        
        cloud.addSubview(userPhoto)
        cloud.addSubview(messageView)
        
        return cloud
    }
}
