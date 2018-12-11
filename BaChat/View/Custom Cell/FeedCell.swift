//
//  FeedCell.swift
//  BaChat
//
//  Created by Ramilia Imankulova on 12/11/18.
//  Copyright © 2018 Ramilia Imankulova. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var messageLbl: UILabel!
    
    func cinfigureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.messageLbl.text = content
        
    }
    
    
}

