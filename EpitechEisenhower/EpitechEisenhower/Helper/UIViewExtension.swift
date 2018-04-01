//
//  UIViewExtension.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 01/04/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import UIKit

extension UIView {
    func roundCorner() {
        layer.cornerRadius = 8
        clipsToBounds = true
    }
}
