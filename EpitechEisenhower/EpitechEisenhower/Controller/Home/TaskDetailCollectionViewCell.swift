//
//  TaskDetailCollectionViewCell.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 01/04/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import Foundation
import UIKit

class TaskDetailCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleCellText: UILabel!
    @IBOutlet weak var dateCellText: UILabel!
    
    func setData(task: TaskEntity) {
        titleCellText.text = task.title
        dateCellText.text = task.createdOn.toString()
    }
}

extension Date {
    func toString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM YYYY"
        return formatter.string(from: self)
    }
}
