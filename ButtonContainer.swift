//
//  ButtonContainer.swift
//  CalculatorTest
//
//  Created by Yang Tian on 11/21/15.
//  Copyright © 2015 Jiao Chu. All rights reserved.
//

import UIKit

let π:CGFloat = CGFloat(M_PI)
@IBDesignable
class ButtonContainer: UIView {

    @IBInspectable var backColor: UIColor = UIColor.clearColor()
    @IBInspectable var btnColor: UIColor = UIColor.blueColor()
    
    let diameter = 15
    let tmp = 70
    
    override func drawRect(rect: CGRect) {
        //test part
//        let btnWidth: CGFloat = 80.0
//        let btnHeight: CGFloat = 80.0
//        
//        let btnRectPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: btnWidth, height: btnHeight))
//        btnRectPath.lineWidth = 3.0
//        //UIColor.yellowColor().setFill()
//        backColor.setFill()
//        btnRectPath.fill() //fill the blank
//        //btnRectPath.stroke() //draw the line

        let context = UIGraphicsGetCurrentContext()
        
        CGContextSaveGState(context)//save original state
        backColor.setFill()
        
        let btnWidth: CGFloat = 60
        let btnHeight: CGFloat = 60
        
        let btnRectPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: btnWidth, height: btnHeight))
//        this part don't use this time
//        let arcPath = UIBezierPath()
//        arcPath.moveToPoint(rect.origin)
//        arcPath.lineWidth = 3
        //Changes the origin of the user coordinate system in a context.
        //move top left to the center
        CGContextTranslateCTM(context, rect.width / 2, rect.height / 2)
        //var tx, ty: Int
        for i in 1...14 {
            let radius = (2 * i - 1) * tmp / 8 + diameter / 2
            let angle = π * CGFloat(i) / 4

            //save the centerd context then rotate and translate
            CGContextSaveGState(context)
            CGContextRotateCTM(context, CGFloat(angle))
 //           CGContextTranslateCTM(context, 0, rect.height / 2 - btnHeight)
            CGContextTranslateCTM(context, 0, CGFloat(radius))
            btnRectPath.fill()
            
            //restore the senterd context for the next rotate
            CGContextRestoreGState(context)
//            
//            if(i % 2 == 0) {
//                arcPath.addArcWithCenter(rect.origin, radius: CGFloat(radius), startAngle: angle, endAngle: angle + π / 2, clockwise: true)
//            }
//            arcPath.stroke()
//            
        }
        //restore the original state in case of more painting
        CGContextRestoreGState(context)
    }
    

}
