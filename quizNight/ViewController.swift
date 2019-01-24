//
//  ViewController.swift
//  quizNight
//
//  Created by Jean Carlos Antonio Pereira dos Santos on 23/01/19.
//  Copyright © 2019 Jean Carlos Antonio Pereira dos Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  // MARK: - Outlets
  
  @IBOutlet weak var quizNightLogo: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    quizNightLogo.frame = CGRect(x: view.bounds.width / 2 - quizNightLogo.frame.width / 2, y: 50, width: quizNightLogo.frame.width, height: quizNightLogo.frame.height)
  }


}

