//
//  UnderlineButton.swift
//  ubit.info
//
//  Created by Luavis on 6/24/15.
//  Copyright (c) 2015 Luavis. All rights reserved.
//

import UIKit
import CoreGraphics

class UnderlineButton : UIButton {
  
  private let undelineHeight:CGFloat = 2.0
  
  override func drawRect(rect: CGRect) {
    
    if let titleLabel = self.titleLabel {
      let context = UIGraphicsGetCurrentContext()
      
      let underlineColor = titleLabel.textColor
      
      CGContextSetFillColorWithColor(context, underlineColor.CGColor)
      CGContextFillRect(context, CGRectMake(0.0, rect.height - undelineHeight, rect.width, undelineHeight))
    }
    
    super.drawRect(rect)
  }
  
}
