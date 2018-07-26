//
//  ChatTableViewDelegat.swift
//  ChatView
//
//  Created by George Kyrylenko on 7/20/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import UIKit

extension ChatViewController: UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        
        if messages[indexPath.row].user?.uid == me?.uid{
            let cloud = getMyCloud(message: messages[indexPath.row])
            cloud.frame.origin = CGPoint(x: self.view.frame.size.width - cloud.frame.size.width - 10, y: 5)
            
            cell.addSubview(cloud)
        } else {
            let cloud = getUserCloud(message: messages[indexPath.row])
            cloud.frame.origin = CGPoint(x: 5, y: 5)
            
            cell.addSubview(cloud)
        }
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cloud = getMyCloud(message: messages[indexPath.row])
        
        return cloud.frame.size.height + 10
    }
    
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView as? UITableView != nil {
            self.view.endEditing(true)
        }
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func insertNewMessage(message: MessageEntity){
        
    }
}
