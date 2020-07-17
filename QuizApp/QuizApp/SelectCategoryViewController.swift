//
//  SelectCategoryViewController.swift
//  QuizApp
//
//  Created by Hailey Bixler on 7/13/20.
//  Copyright © 2020 Olivia Edwards. All rights reserved.
//

import UIKit

class SelectCategoryViewController: UIViewController {
    
    var category = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        category = sender.currentTitle!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toQuestion" {
            let newVC = segue.destination as! QuestionScreen
            newVC.category = category
            print(category)
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
