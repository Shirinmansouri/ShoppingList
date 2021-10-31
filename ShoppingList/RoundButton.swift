//
//  RoundButton.swift
//  ShoppingList
//
//  Created by Shirin Mansouri on 2021-10-28.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var roundButton:Bool=false{
        didSet{
            if roundButton
            {
                layer.cornerRadius=frame.height/2
            }
        }
    }

}
