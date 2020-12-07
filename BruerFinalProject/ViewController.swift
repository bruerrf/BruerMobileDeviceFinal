//
//  ViewController.swift
//  BruerFinalProject
//
//  Created by user185344 on 12/5/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableData: UITableView!
    let mainArray = ["First Blog", "Second Blog", "Third Blog", "Fourth Blog", "Fifth Blog", "Sixth Blog", "Seventh Blog", "Eighth Blog"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainArray.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
        cell.mainText?.text = self.mainArray[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableData.delegate = self
        tableData.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //when selected.
        let numString = indexPath.row + 1
        let segueString = "link" + "\(numString)"
        self.performSegue(withIdentifier: segueString, sender: UITableViewCell.self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "link1", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "link1" {
            let nextVC = segue.destination as! SecondViewController
            nextVC.navigationItem.title = "First Blog"
        }
        if segue.identifier == "link2" {
            let nextVC = segue.destination as! ThirdViewController
            nextVC.navigationItem.title = "Second Blog"
        }
        if segue.identifier == "link3" {
            let nextVC = segue.destination as! FourthViewController
            nextVC.navigationItem.title = "Third Blog"
        }
        if segue.identifier == "link4" {
            let nextVC = segue.destination as! FifthViewController
            nextVC.navigationItem.title = "Fourth Blog"
        }
        if segue.identifier == "link5" {
            let nextVC = segue.destination as! SixthViewController
            nextVC.navigationItem.title = "Fifth Blog"
        }
        if segue.identifier == "link6" {
            let nextVC = segue.destination as! SeventhViewController
            nextVC.navigationItem.title = "Sixth Blog"
        }
        if segue.identifier == "link7" {
            let nextVC = segue.destination as! EighthViewController
            nextVC.navigationItem.title = "Seventh Blog"
        }
        if segue.identifier == "link8" {
            let nextVC = segue.destination as! NinthViewController
            nextVC.navigationItem.title = "Eighth Blog"
        }
    }

}

