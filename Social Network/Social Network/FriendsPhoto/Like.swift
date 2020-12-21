//
//  Like.swift
//  Social Network
//
//  Created by Nikita Gras on 13.12.2020.
//

import UIKit

@IBDesignable class Like: UIButton {
    @IBInspectable var filled: Bool = true
    @IBInspectable var strokeWidth: CGFloat = 2.0
    
    @IBInspectable var strokeColor: UIColor?
    
    override func draw(_ rect: CGRect) {
        let bezierPath = UIBezierPath(heartIn: self.bounds)
        
        if self.strokeColor != nil {
            self.strokeColor!.setStroke()
        } else {
            self.tintColor.setStroke()
        }
        
        bezierPath.lineWidth = self.strokeWidth
        bezierPath.stroke()
        
        if self.filled {
            self.tintColor.setFill()
            bezierPath.fill()
        }
    }
}
