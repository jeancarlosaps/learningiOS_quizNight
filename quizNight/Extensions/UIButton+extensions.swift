//
//  UIButton+extensions.swift
//  ReviewAutoLayout
//
//  Created by Jean Carlos Antonio Pereira dos Santos on 25/01/19.
//  Copyright © 2019 Jean Carlos Antonio Pereira dos Santos. All rights reserved.
//

import UIKit

extension UIButton {
  
  @IBInspectable var borderColor: UIColor {
    get {
      return self.borderColor
    }
    
    set {
      let border = newValue
      self.layer.borderColor = border.cgColor
    }
  }
  
  @IBInspectable var borderWidth: CGFloat {
    get {
      return self.borderWidth
    }
    
    set {
      let width = newValue
      self.layer.borderWidth = width
      self.layer.masksToBounds = true
    }
  }
  
  @IBInspectable var cornerRadius: CGFloat {
    get {
      return self.cornerRadius
    }
    
    set {
      let corner = newValue
      self.layer.cornerRadius = corner
      self.layer.masksToBounds = true
    }
  }
  
}
