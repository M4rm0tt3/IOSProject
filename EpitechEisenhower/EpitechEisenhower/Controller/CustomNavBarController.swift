//
//  CustomNavBarController.swift
//  EpitechEisenhower
//
//  Created by Julie Lecêtre on 31/03/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import UIKit

class CustomNavBarController: UINavigationController{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.shadowImage = UIImage(named:"")
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named:""), for:UIBarMetrics.default)
    }
}
