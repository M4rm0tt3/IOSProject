//
//  Entity.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 31/03/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import Foundation

protocol EntityProtocol {
    var id: Int {get}
}

class Entity: EntityProtocol {
    var id: Int = 0
    var createdOn: Date
    var ModifiedOn: Date
    
    init() {
        self.createdOn = Date()
        self.ModifiedOn = Date()
    }
    
    init(id: Int, createdOn: Date, modifiedOn: Date) {
        self.id = id
        self.createdOn = createdOn
        self.ModifiedOn = modifiedOn
    }
}
