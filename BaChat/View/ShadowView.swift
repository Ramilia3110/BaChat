//
//  ShadowView.swift
//  BaChat
//
//  Created by Ramilia Imankulova on 12/10/18.
//  Copyright © 2018 Ramilia Imankulova. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        super.awakeFromNib()
    }
    
}
