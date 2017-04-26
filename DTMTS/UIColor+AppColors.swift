//
//  UIColor+AppColors.swift
//  FleetManager
//
//  Created by Chris Delaney on 27/12/2015.
//  Copyright © 2015 Ridebooker. All rights reserved.
//

import Foundation

extension UIColor {
    func available() -> UIColor {
        return UIColor(red: 96/255, green: 205/255, blue: 155/255, alpha: 1.0)
    }
    
    func lightGreen() -> UIColor {
        return UIColor(red: 96/255, green: 205/255, blue: 155/255, alpha: 0.5)
    }
    
    func limited() -> UIColor {
        return UIColor(red: 238/255, green: 201/255, blue: 90/255, alpha: 1.0)
    }
    
    func soldOut() -> UIColor {
        return UIColor(red: 232/255, green: 115/255, blue: 82/255, alpha: 1.0)
    }
    
    func infoColor() -> UIColor {
        return UIColor(red: 232/255, green: 232/255, blue: 232/255, alpha: 1.0)
    }
    
    func orangeColor() -> UIColor {
        return UIColor(red: 252/255, green: 230/255, blue: 207/255, alpha: 1.0)
    }
    
    func navBarColor() -> UIColor {
        return UIColor(red: 91/255, green: 98/255, blue: 109/255, alpha: 1.0)
    }
    
    func tripHeaderColor() -> UIColor {
        return UIColor(red: 74/255, green: 91/255, blue: 105/255, alpha: 1.0)
    }
    
    func flightHeaderColor() -> UIColor {
        return UIColor(red: 112/255, green: 129/255, blue: 142/255, alpha: 1.0)
    }
    
    func e1() -> UIColor {
        return UIColor(red: 225/255, green: 225/255, blue: 225/255, alpha: 1.0)
    }
    
    func barGreenColor() -> UIColor {
        return UIColor(red: 95/255, green: 212/255, blue: 133/255, alpha: 1.0)
    }
    
    func warningColor() -> UIColor {
        return UIColor(red: 253/255, green: 173/255, blue: 42/255, alpha: 1.0)
    }
    
    /**
     Returns a darker color by the provided percentage
     
     :param: darking percent percentage
     :returns: darker UIColor
     */
    func darkerColor(percent : Double) -> UIColor {
        return colorWithBrightnessFactor(CGFloat(1 - percent));
    }

    
    /**
     Return a modified color using the brightness factor provided
     
     :param: factor brightness factor
     :returns: modified color
     */
    func colorWithBrightnessFactor(factor: CGFloat) -> UIColor {
        var hue : CGFloat = 0
        var saturation : CGFloat = 0
        var brightness : CGFloat = 0
        var alpha : CGFloat = 0
        
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return UIColor(hue: hue, saturation: saturation, brightness: brightness * factor, alpha: alpha)
        } else {
            return self;
        }
    }
}