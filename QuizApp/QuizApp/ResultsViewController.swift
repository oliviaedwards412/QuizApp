//
//  ResultsViewController.swift
//  QuizApp
//
//  Created by Hailey Bixler on 7/16/20.
//  Copyright © 2020 Olivia Edwards. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var image: UIImage = UIImage(systemName: "film")!

    override func viewDidLoad() {
        super.viewDidLoad()        // Do any additional setup after loading the view.
        categoryImage.image = image
    }
    
    @IBOutlet weak var passLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
