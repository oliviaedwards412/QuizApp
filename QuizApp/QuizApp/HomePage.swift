//
//  HomePage.swift
//  QuizApp
//
//  Created by Olivia Edwards on 7/13/20.
//  Copyright © 2020 Olivia Edwards. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class HomePage: UIViewController {

       let db = Firestore.firestore()

     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         var docRef = db.collection("Questions").document("Animals").collection("Q1").document("Q1")
         docRef.getDocument { (document, error) in
             if let document = document, document.exists {
                 let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                 print("Document data: \(dataDescription)")
             } else {
                 print("Document does not exist")
             }
         }
     }

}
