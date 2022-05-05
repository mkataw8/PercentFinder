//
//  TableP1.swift
//  PercentFinder
//
//  Created by Muhamad Kataw on 5/4/22.
//

import UIKit

class TableVC: UIViewController {

  @IBOutlet weak var FitnessView: UITableView!
  let images = ["percent"]
  let paras = [
    "Percentage is a fraction or a ratio in which the value of whole is always 100. For example, if Sam scored 30% marks in his math test, it means that he scored 30 marks out of 100. It is written as 30/100 in the fraction form and 30:100 in terms of ratio."
  ]

  override func viewDidLoad() {
    super.viewDidLoad()
    FitnessView.delegate = self
    FitnessView.dataSource = self
  }

}

extension TableVC: UITableViewDelegate, UITableViewDataSource {
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


