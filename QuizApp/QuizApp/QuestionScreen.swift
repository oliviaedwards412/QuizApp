//
//  QuestionScreen.swift
//  QuizApp
//
//  Created by Anna Diederich on 7/13/20.
//  Copyright © 2020 Olivia Edwards. All rights reserved.
//

import UIKit

class QuestionScreen: UIViewController {

    var category: String = ""
    let images = ["Music":UIImage(systemName: "music.note"),"Movies":UIImage(systemName: "film"),"Books":UIImage(systemName: "book"),"Animals":UIImage(systemName: "hare"),"World":UIImage(systemName: "globe")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryImage!.image = images[category]!
    }
    
    @IBOutlet weak var categoryImage: UIImageView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResults" {
            let newVC = segue.destination as!  ResultsViewController
            newVC.image = images[category]!!
            
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
