//
//  ButtonView.swift
//  CalculatorTest
//
//  Created by Yang Tian on 11/20/15.
//  Copyright © 2015 Jiao Chu. All rights reserved.
//

import UIKit

@IBDesignable
class ButtonView: UIButton {
    
    @IBInspectable var btnColor: UIColor = UIColor.orangeColor()
    
    override func drawRect(rect: CGRect) {
        
//        let path = UIBezierPath()
//        path.moveToPoint(rect.origin)
//        path.addLineToPoint(CGPoint(x: rect.size.width, y: rect.origin.x))
//        path.addLineToPoint(CGPoint(x: rect.size.width, y: rect.size.height))
//        path.addLineToPoint(CGPoint(x: rect.origin.x, y: rect.size.height))
//        path.closePath()
//        path.fill()
    
        let path = UIBezierPath(ovalInRect: rect)
        btnColor.setFill()
        UIColor.yellowColor().setFill()
        path.fill()
       // path.stroke()
    }
}
