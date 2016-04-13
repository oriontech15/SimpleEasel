//
//  ColorExtensions.swift
//  Easel
//
//  Created by Justin Smith on 3/24/16.
//  Copyright © 2016 Justin Smith. All rights reserved.
//

import UIKit

extension UIColor
{
    static func reallyLightGray() -> UIColor
    {
        return UIColor(red: 0.906, green: 0.906, blue: 0.906, alpha: 1.00)
    }
    
    static func red() -> UIColor
    {
        return UIColor(red: 1.000, green: 0.000, blue: 0.000, alpha: 1.00)
    }
    
    static func lightRed() -> UIColor
    {
        return UIColor(red: 0.933, green: 0.165, blue: 0.255, alpha: 1.00)
    }
    
    static func orange() -> UIColor
    {
        return UIColor(red: 1.000, green: 0.479, blue: 0.000, alpha: 1.00)
    }
    
    static func copper() -> UIColor
    {
        return UIColor(red: 1.000, green: 0.698, blue: 0.000, alpha: 1.00)
    }
    
    static func yellow() -> UIColor
    {
        return UIColor(red: 0.992, green: 0.894, blue: 0.267, alpha: 1.00)
    }
    
    static func lightGreen() -> UIColor
    {
        return UIColor(red: 0.165, green: 0.988, blue: 0.596, alpha: 1.00)
    }
    
    static func limeGreen() -> UIColor
    {
        return UIColor(red: 0.000, green: 0.988, blue: 0.127, alpha: 1.00)
    }
    
    static func green() -> UIColor
    {
        return UIColor(red: 0.067, green: 0.775, blue: 0.194, alpha: 1.00)
    }
    
    static func lightBlue() -> UIColor
    {
        return UIColor(red: 0.000, green: 0.990, blue: 1.000, alpha: 1.00)
    }
    
    static func babyBlue() -> UIColor
    {
        return UIColor(red: 0.129, green: 0.773, blue: 0.996, alpha: 1.00)
    }
    
    static func blue() -> UIColor
    {
        return UIColor(red: 0.000, green: 0.277, blue: 0.805, alpha: 1.00)
    }
    
    static func lightPurple() -> UIColor
    {
        return UIColor(red: 0.675, green: 0.425, blue: 0.919, alpha: 1.00)
    }
    
    static func purple() -> UIColor
    {
        return UIColor(red: 0.523, green: 0.000, blue: 0.805, alpha: 1.00)
    }
    
    static func lightPink() -> UIColor
    {
        return UIColor(red: 1.000, green: 0.500, blue: 0.919, alpha: 1.00)
    }
    
    static func pink() -> UIColor
    {
        return UIColor(red: 1.000, green: 0.000, blue: 0.658, alpha: 1.00)
    }
    
    static func brown() -> UIColor
    {
        return UIColor(red: 0.613, green: 0.294, blue: 0.000, alpha: 1.00)
    }
    
    static func random() -> UIColor
    {
        return UIColor(red: CGFloat(arc4random_uniform(256)) / 255, green: CGFloat(arc4random_uniform(256)) / 255, blue: CGFloat(arc4random_uniform(256)) / 255, alpha: 1.0)
    }
}
