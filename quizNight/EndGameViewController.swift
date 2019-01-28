//
//  EndGameViewController.swift
//  quizNight
//
//  Created by Jean Carlos Antonio Pereira dos Santos on 28/01/19.
//  Copyright © 2019 Jean Carlos Antonio Pereira dos Santos. All rights reserved.
//

import UIKit

class EndGameViewController: UIViewController {
  
  // MARK: - Outlets
  @IBOutlet weak var lblScore: UILabel!
  
  // MARK: - Properties
  var score: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
      lblScore.text = "\(score)"
    }
}
