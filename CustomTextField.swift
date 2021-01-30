//
//  CustomTextField.swift
//  Crediit Card
//
//  Created by Aisel Usmanova on 1/24/21.
//  Copyright © 2021 Aisel Usmanova. All rights reserved.
//

import UIKit

@IBDesignable

class CustomTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: frame.height - 2, width: frame.width, height: 2)
        
        bottomLine.backgroundColor = UIColor.init(displayP3Red: 48/255, green: 173/255, blue: 99/255, alpha: 2).cgColor
        
        borderStyle = .none
        layer.addSublayer(bottomLine)

    }


}
