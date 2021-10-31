//
//  BorderedTextField.swift
//  ShoppingList
//
//  Created by Shirin Mansouri on 2021-10-28.
//

import UIKit

@IBDesignable
class BorderedTextField: UITextField {
    let insets:UIEdgeInsets
    
   
    init(insets: UIEdgeInsets)
    {
        self.insets = insets
        super.init(frame:.zero)
        layer.cornerRadius = 4
        layer.borderWidth = 1.5
        layer.borderColor = UIColor.systemRed.cgColor
        
    }
    required init?(coder aDecoder: NSCoder) {
        
        self.insets = UIEdgeInsets.init()
       super.init(coder: aDecoder)
        layer.cornerRadius = 8
        layer.borderWidth = 2.5
        layer.borderColor = UIColor.lightGray.cgColor
    
    }
  
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
}

 

    
