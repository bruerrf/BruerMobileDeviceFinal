//
//  SecondViewController.swift
//  BruerFinalProject
//
//  Created by user185344 on 12/5/20.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "secondLink", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondLink" {
            let nextVC = segue.destination as! ThirdViewController
            nextVC.navigationItem.title = "Second Blog"
        }
        if segue.identifier == "homeLink" {
            let nextVC = segue.destination as! ViewController
            nextVC.navigationItem.title = "Blog List"
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
