//
//  ButtonWithBorder.swift
//  quizNight
//
//  Created by Jean Carlos Antonio Pereira dos Santos on 24/01/19.
//  Copyright © 2019 Jean Carlos Antonio Pereira dos Santos. All rights reserved.
//

import UIKit

class ButtonWithBorder: UIButton {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    layer.borderWidth = 3.0
    layer.borderColor = UIColor.red.cgColor
  }

}
