//
//  LoginView.swift
//  ubit.info
//
//  Created by Luavis on 6/24/15.
//  Copyright (c) 2015 Luavis. All rights reserved.
//

import UIKit


extension LoginViewController { // View
  
  override func viewDidAppear(animated: Bool) {
    
    self.logoYConstraint.constant = 80
    
//    dispatch_after(1, dispatch_get_main_queue()) { () -> Void in
    UIView.animateWithDuration(0.7) { () -> Void in
      self.logoView.layoutIfNeeded()
    }
  }
}
