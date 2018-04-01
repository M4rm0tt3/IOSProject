//
//  UIColor.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 01/04/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: a
        )
    }
    
    convenience init(rgb: Int, a: CGFloat = 1.0) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF,
            a: a
        )
    }
    
    static var redColor: UIColor {
        return UIColor(rgb: 0xFF3A07, a: 0.8)
    }
    static var lightGreenColor: UIColor {
        return UIColor(rgb: 0xF8E81C, a: 0.4)
    }
    static var greenColor: UIColor {
        return UIColor(rgb: 0x7ED321, a: 0.8)
    }
    static var blueColor: UIColor {
        return UIColor(rgb: 0x0DA0B2, a: 0.8)
    }
    static var orangeColor: UIColor {
        return UIColor(rgb: 0xFFB937, a: 0.9)
    }
    static var yellowColor: UIColor {
        return UIColor(rgb: 0xF8E81C, a: 0.8)
    }
    static var lightBlueColor: UIColor {
        return UIColor(rgb: 0x80CADC, a: 0.8)
    }
}
