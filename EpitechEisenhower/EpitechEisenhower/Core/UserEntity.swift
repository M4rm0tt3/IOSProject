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
    
    init(id: Int, createdOn: Date, modifiedOn: Date, email: String) {
        self.email = email
        super.init(id: id, createdOn: createdOn, modifiedOn: modifiedOn)
    }
}
