//
//  Extension.swift
//  ubit.info
//
//  Created by Luavis on 6/24/15.
//  Copyright (c) 2015 Luavis. All rights reserved.
//

import Foundation
import UIKit


extension UIColor {
  class func fromRGB(rgbValue:Int) -> UIColor {
    
    var red = Float((rgbValue & 0xFF0000) >> 16) / 255.0
    var green = Float((rgbValue & 0xFF00) >> 8) / 255.0
    var blue = Float(rgbValue & 0xFF) / 255.0
    
    return UIColor(red:CGFloat(red), green:CGFloat(green), blue:CGFloat(blue), alpha: 1.0)
  }
}
