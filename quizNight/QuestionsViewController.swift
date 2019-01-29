//
//  QuestionsViewController.swift
//  quizNight
//
//  Created by Jean Carlos Antonio Pereira dos Santos on 27/01/19.
//  Copyright © 2019 Jean Carlos Antonio Pereira dos Santos. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
  
  // Mark: - Outlets
  @IBOutlet weak var tipImg: UIImageView!
  @IBOutlet weak var playStack: UIStackView!
  
  //MARK: Properties
  var cities: [String] = ["New York", "Paris", "Rio de Janeiro", "Toronto"]
  var options: [String] = ["São Paulo", "Vancouver", "Milão"]
  var rightChoice: Int!
  var score: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    options.append(contentsOf: cities)
    loadQuestions()
  }
  
  func shuffle(array : [String]) -> [String] {
    var arrayModifiable = array
    
    if array.count < 2 { return array }
    
    for i in 0..<array.count - 1 {
      // shuffle elements in array of the cities
      let j = Int(arc4random_uniform(UInt32(array.endIndex - i))) + i
      // change position elements
      if i != j {
        arrayModifiable.swapAt(i, j)
      }
    }
    return arrayModifiable
  }
  
  func loadQuestions() {
    if (cities.count == 0) {
      self.performSegue(withIdentifier: "teste", sender: self)
      return
    }
    
    let indice = Int(arc4random_uniform(UInt32(cities.count)))
    let city = cities[indice]
    cities.remove(at: indice)
    
    let imageName = city
    tipImg.image = UIImage(named: imageName)
    
    var myOptions = shuffle(array: options)
    
    for (index, option) in myOptions.enumerated() {
      if option == city {
        rightChoice = index
        break
      }
    }
    
    var optionInButton = 0
    for view in playStack.subviews {
      if let btn = view as? UIButton {
        btn.setTitle(myOptions[optionInButton], for: .normal)
        optionInButton += 1
      }
    }
    
    // exchange the right option to stay in the top 4
    if rightChoice <= 4 {
      let newRigthChoice = Int(arc4random_uniform(UInt32(4))) + 1
      myOptions.swapAt(rightChoice, newRigthChoice)
      rightChoice = newRigthChoice
    }
  }
  
  func button(_ num: Int) {
    if num == rightChoice {
      print("Acertou")
      score += 1
    } else {
      print("Errou")
      performSegue(withIdentifier: "teste", sender: self)
    }
    loadQuestions()
  }
  
  // MARK: - Actions
  @IBAction func optionOne(_ sender: UIButton) {
    button(1)
  }
  
  @IBAction func optionTwo(_ sender: UIButton) {
    button(2)
  }
  
  @IBAction func optionThree(_ sender: UIButton) {
    button(3)
  }
  
  @IBAction func optionFour(_ sender: UIButton) {
    button(4)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? EndGameViewController {
      destination.score = self.score
    }
  }
  
}
