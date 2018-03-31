//
//  ProfileViewController.swift
//  EpitechEisenhower
//
//  Created by Julie Lecêtre on 31/03/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import UIKit

class ProfileViewController : UIViewController{
    @IBOutlet weak var ProfilePicture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ProfilePicture.setRounded()
    }
}

extension UIImageView {
    func setRounded() {
        let radius = self.frame.height / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}
