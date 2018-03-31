//
//  ViewController.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 22/03/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var authImp: EpitechEisenhowerAuth?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func trigger(_ sender: Any) {
        authImp?.signInUser(email: emailTextField.text,
                            password: passwordTextField.text,
                            completion: {[weak self] (result) in
                                switch result {
                                case .success :
                                    let homeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "homeVC")
                                    let appDelegate = UIApplication.shared.delegate as! AppDelegate
                                    appDelegate.window?.rootViewController = homeVC
                                case .failure(let error):
                                    print(error)
                                }
        })
    }

}

