//
//  UserEntity.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 31/03/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import Foundation

class UserEntity: Entity {
    var email: String
    
    init(email: String) {
        self.email = email
    }
}
