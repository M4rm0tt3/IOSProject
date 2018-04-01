//
//  TaskDetailViewController.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 31/03/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    private var task: TaskEntity?
    private var isEditingMode: Bool = false
    
    @IBOutlet weak var deleteTaskButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (isEditingMode) {
            if let title = self.title {
                self.title = title + " (Edit)"
            }
        }
        deleteTaskButton.isHidden = !isEditingMode
    }
    
    func setModel(model: TaskEntity?) {
        if let model = model {
            task = model
            isEditingMode = true
        }
    }
}
