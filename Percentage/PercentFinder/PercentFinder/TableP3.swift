//
//  TableP3.swift
//  PercentFinder
//
//  Created by Muhamad Kataw on 5/4/22.
//

import UIKit

class TableVC3: UIViewController {
  @IBOutlet weak var FitnessView: UITableView!
  let images = ["aCalculator"]
  let paras = [
    "The percentage formula is used to find the share of a whole in terms of 100. Using this formula, you can represent a number as a fraction of 100. The formula given below:Percentage= (Value/Total Value)×100"
  ]
  override func viewDidLoad() {
    super.viewDidLoad()
    FitnessView.delegate = self
    FitnessView.dataSource = self

  }

}

extension TableVC3: UITableViewDelegate, UITableViewDataSource {
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


