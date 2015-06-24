//
//  UnderlineTextfield.swift
//  ubit.info
//
//  Created by Luavis on 6/24/15.
//  Copyright (c) 2015 Luavis. All rights reserved.
//

import UIKit
import CoreGraphics

class UnderlineTextfield: UITextField {
  
  private let bottomMargin:CGFloat = 5.0
  
  private let leftMargin:CGFloat = 5.0
  
  private let leftLineHeightDelta:CGFloat = 10.0
  
  private let underlineRatio:CGFloat = 0.0107
  
  override func textRectForBounds(bounds: CGRect) -> CGRect {
    
    let leftMargin:CGFloat = self.leftLineSize() + self.leftMargin
    let bottomMargin:CGFloat = self.underlineSize() + self.bottomMargin
    
    let x:CGFloat = bounds.origin.x + leftMargin
    let y:CGFloat = bounds.origin.y + bottomMargin
    let w = bounds.size.width - leftMargin
    let h = bounds.size.height - bottomMargin
    
    let inset:CGRect = CGRectMake(x, y, w, h)
    
    return inset;
  }
  
  override func editingRectForBounds(bounds: CGRect) -> CGRect {
    
    return self.textRectForBounds(bounds)
  }
  
  override func drawRect(rect: CGRect) {
    self.borderStyle = .None    
    var context:CGContextRef = UIGraphicsGetCurrentContext()
    
    var underlineColor = UIColor.fromRGB(0x999999)
    
    CGContextSetFillColorWithColor(context, underlineColor.CGColor)
    
    // draw left line
    CGContextFillRect(context, CGRectMake(0, self.leftLineHeightDelta, self.leftLineSize(),
                      rect.size.height - self.leftLineHeightDelta))
    // draw dunder line
    
    CGContextFillRect(context, CGRectMake(0, rect.height - self.underlineSize(), rect.width, self.underlineSize()))
    
  }
  
  private func leftLineSize() -> CGFloat {
    return self.underlineSize()
  }
  
  private func underlineSize() -> CGFloat {
    return self.bounds.width * self.underlineRatio
  }
  
}
