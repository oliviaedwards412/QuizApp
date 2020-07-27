//
//  LoginScreen.swift
//  QuizApp
//
//  Created by Anna Diederich on 7/13/20.
//  Copyright © 2020 Olivia Edwards. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func loginPressed(_ sender: Any) {
        Auth.auth().signIn(withEmail: usernameField.text!, password: passwordField.text!) { [weak self] authResult, error in
          guard let strongSelf = self else {
            return
            }
            if error != nil {
                print("Wrong")
            } else {
                self!.performSegue(withIdentifier: "loggedIn", sender: nil)
            }
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
