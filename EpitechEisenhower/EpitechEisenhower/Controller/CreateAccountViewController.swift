//
//  CreateAccountViewController.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 31/03/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import Foundation
import FirebaseAuth

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func createAccount(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email,
                                   password: password,
                                   completion: {[weak self] (user, error) in
                                    if let _ = user {
                                        self?.navigationController?.popViewController(animated: true)
                                    }
                                    if let error = error {
                                        print(error)
                                    }
            })
        }
    }
    
}
