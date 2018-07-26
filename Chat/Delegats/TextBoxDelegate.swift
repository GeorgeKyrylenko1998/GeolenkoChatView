//
//  TextBoxDelegate.swift
//  ChatView
//
//  Created by George Kyrylenko on 7/21/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import UIKit

extension ChatViewController{
    
    @objc func keyboardWillShow(notification: Notification) {
        
        let userInfo:NSDictionary = notification.userInfo! as NSDictionary
        let keyboardFrame:NSValue = userInfo.value(forKey: UIKeyboardFrameEndUserInfoKey) as! NSValue
        let keyboardRectangle = keyboardFrame.cgRectValue
       // let keyboardHeight = keyboardRectangle.height
        
        self.keyboardHeight = keyboardRectangle.height
        showTextView(heigth: self.keyboardHeight!)
        print("keyboardRectangle.height: ", self.view.frame.size.height - keyboardFrame.cgPointValue.y)//keyboardRectangle.height)
//        showTextField()
    }
    
    @objc func keyboardWillClose(notification: Notification) {
        self.keyboardHeight = 0
        showTextView(heigth: self.keyboardHeight!)
    }
    
    public func textViewDidChange(_ textView: UITextView) {
       // var lines = textView.text.components(separatedBy: "\n").count //textView.text.filter{$0 == "\n"}.count
        //lines = lines < countOfLines ? lines : countOfLines
        textView.frame.size.height = textView.contentSize.height <= CGFloat(countOfLines) * (textView.font?.pointSize ?? 14) + (textView.font?.pointSize ?? 14) ? textView.contentSize.height : CGFloat(countOfLines) * (textView.font?.pointSize ?? 14) + (textView.font?.pointSize ?? 14)
        showTextView(heigth: keyboardHeight!)
       // adjustUITextViewHeight(arg: textView)
    }
    
    func showTextView(heigth: CGFloat){
        self.messagesTabel.frame.size.height = self.view.frame.height - heigth - (self.navigationController?.navigationBar.frame.height ?? 0) - 20 - self.messageText.frame.size.height
        
         self.messageText.frame.origin = CGPoint(x: 5, y: self.view.frame.height - heigth - self.messageText.frame.size.height - 5)
        self.sendButton.center.y = self.messageText.center.y
    }
    
    func adjustUITextViewHeight(arg : UITextView)
    {
        arg.translatesAutoresizingMaskIntoConstraints = true
        arg.sizeToFit()
    }
}
