//
//  ViewController.swift
//  PercentFinder
//
//  Created by Muhamad Kataw on 5/4/22.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var age: UITextField!
  @IBOutlet weak var display: UITextView!

  var twoOptions = "incrase"
  var bmr = 0.0
  override func viewDidLoad() {
    super.viewDidLoad()
    let tap = UITapGestureRecognizer(
      target: self, action: #selector(UIInputViewController.dismissKeyboard))

    view.addGestureRecognizer(tap)
    // Do any additional setup after loading the view.
  }
  //In order to remove Keyboard
  @objc func dismissKeyboard() {
    view.endEditing(true)
  }
  @IBAction func changeSegment(_ sender: UISegmentedControl) {
    if sender.selectedSegmentIndex == 0 {
      twoOptions = "increase"
    } else if sender.selectedSegmentIndex == 1 {
      twoOptions = "decrease"
    }
  }

  @IBAction func sedentary(_ sender: UIButton) {
    bmr = 1.07
    sender.backgroundColor = UIColor.darkGray

  }
  @IBAction func light(_ sender: UIButton) {
    bmr = 1.20
    sender.backgroundColor = UIColor.darkGray
  }
  @IBAction func moderate(_ sender: UIButton) {
    bmr = 1.40
    sender.backgroundColor = UIColor.darkGray
  }
  @IBAction func intense(_ sender: UIButton) {
    bmr = 1.50
    sender.backgroundColor = UIColor.darkGray
  }
  @IBAction func hard(_ sender: UIButton) {
    bmr = 1.75
    sender.backgroundColor = UIColor.darkGray
  }

  @IBAction func Calculate(_ sender: Any) {
    let textNumero = age.text ?? ""
    let doubleNumero = Double(textNumero) ?? 0.0

    var currCalc = 0.0

    if twoOptions == "increase" {
      currCalc = doubleNumero * bmr
    } else if twoOptions == "decrease" {
      currCalc = doubleNumero - (doubleNumero * (bmr - 1.00))
    }

    let afterCalc = currCalc

    display.text = String(format: "After the current Applied Percentage : %d    ", Int(afterCalc))
    display.font = UIFont(name: "Menlo", size: 18)
    display.textAlignment = .center

  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    age.resignFirstResponder()
  }
}


