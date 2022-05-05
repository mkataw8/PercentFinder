//
//  TableP2.swift
//  PercentFinder
//
//  Created by Muhamad Kataw on 5/4/22.
//

import UIKit

class TableVC2: UIViewController {

  @IBOutlet weak var FitnessView: UITableView!
  let images = ["life", "analyize", "effective"]
  let paras = [
    "Percents Play an important part in our Daily life.",
    "With the help of percentage the lagre data can be analyzed in less time with great accuracy",
    "Percentage is very effective medium to represent the numerical data in simplest way",
  ]
  override func viewDidLoad() {
    super.viewDidLoad()
    FitnessView.delegate = self
    FitnessView.dataSource = self
  }

}

extension TableVC2: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return images.count
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    275
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = FitnessView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
    let image = images[indexPath.row]
    let para = paras[indexPath.row]
    cell.img.image = UIImage(named: image)
    cell.tips.text = para
    return cell
  }

}


