//
//  BackgroundView.swift
//  CalculatorTest
//
//  Created by Yang Tian on 11/20/15.
//  Copyright © 2015 Jiao Chu. All rights reserved.

// Color the background

import UIKit

@IBDesignable
class BackgroundView: UIView {
    
    @IBInspectable var startColor: UIColor = UIColor.yellowColor()
    @IBInspectable var endColor: UIColor = UIColor.orangeColor()

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let colors = [startColor.CGColor, endColor.CGColor]
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colorLocation: [CGFloat] = [0.0, 1.0]
        let gradient = CGGradientCreateWithColors(colorSpace, colors, colorLocation)
        
        
        let center = self.center
        let startPoint = CGPoint(x: center.x, y: 0)
        let endPoint = CGPoint(x: center.x, y: center.y * 2)
        //let startPoint = CGPoint.zero
        //let endPoint = CGPoint(x: self.bounds.width, y: self.bounds.height)
        CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, CGGradientDrawingOptions.DrawsBeforeStartLocation)
        
        
       // CGContextDrawRadialGradient(context, gradient, center, 15.0, CGPoint(x: center.x + 60, y: center.y + 60), 50.0, CGGradientDrawingOptions.DrawsBeforeStartLocation)
    }

}
