//
//  TaskEntity.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 31/03/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import Foundation

enum TaskType: String {
    case None
    case Important
    case Urgent
    case Both
}

class TaskEntity: Entity {
    var title: String
    var description: String
    var owner: UserEntity
    var sharedWith: [UserEntity]?
    var priority: TaskType = .None
    
    init(id: Int, createdOn: Date, modifiedOn: Date, title: String, description: String, owner: UserEntity) {
        self.title = title
        self.description = description
        self.owner = owner
        self.sharedWith = nil
        super.init(id: id, createdOn: createdOn, modifiedOn: modifiedOn)
    }
}
