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
    private var isImportant: Bool = false
    private var isUrgent: Bool = false
    
    @IBOutlet weak var saveTaskButton: UIButton!
    @IBOutlet weak var deleteTaskButton: UIButton!
    
    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var titleTask: UITextView!
    @IBOutlet weak var importantTaskButton: UIButton!
    @IBOutlet weak var urgentTaskButton: UIButton!
    
    @IBOutlet weak var userListView: UIView!
    @IBOutlet weak var descriptionTask: UITextView!
    
    @IBOutlet weak var dateTask: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDesign()
        if (isEditingMode) {
            if let title = self.title {
                self.title = title + " (Edit)"
            }
        }
        fillControl()
    }
    
    private func fillControl() {
        if let task = task {
            titleTask.text = task.title
            descriptionTask.text = task.description
            dateTask.text = task.createdOn.toString()
            switch task.priority {
            case .Both :
                importantTaskButton.tintColor = UIColor.white
                urgentTaskButton.tintColor = UIColor.white
            case .None:
                importantTaskButton.tintColor = UIColor.darkGray
                urgentTaskButton.tintColor = UIColor.darkGray
            case .Important:
                importantTaskButton.tintColor = UIColor.white
                urgentTaskButton.tintColor = UIColor.darkGray
            case .Urgent:
                importantTaskButton.tintColor = UIColor.darkGray
                urgentTaskButton.tintColor = UIColor.white
            }
        }
    }
    
    private func setDesign() {
        view.backgroundColor = .lightBlueColor
        
        titleView.backgroundColor = .blueColor
        titleView.roundCorner()
        
        userListView.backgroundColor = .blueColor
        userListView.roundCorner()
        
        descriptionTask.backgroundColor = .blueColor
        descriptionTask.roundCorner()
        
        dateTask.backgroundColor = .blueColor
        
        saveTaskButton.backgroundColor = .orangeColor
        saveTaskButton.roundCorner()
        
        deleteTaskButton.backgroundColor = .yellowColor
        deleteTaskButton.isHidden = !isEditingMode
        deleteTaskButton.roundCorner()
        
        importantTaskButton.imageView?.image = importantTaskButton.imageView?.image!.withRenderingMode(.alwaysTemplate)
        urgentTaskButton.imageView?.image = urgentTaskButton.imageView?.image!.withRenderingMode(.alwaysTemplate)
    }
    
    @IBAction func importantTaskSet(_ sender: Any) {
        if let task = task {
            isImportant = !isImportant
            importantTaskButton.tintColor = isImportant ? UIColor.white : UIColor.darkGray
            setPriority(task: task)
        }
    }
    @IBAction func urgentTaskSet(_ sender: Any) {
        if let task = task {
            isUrgent = !isUrgent
            urgentTaskButton.tintColor = isUrgent ? UIColor.white : UIColor.darkGray
            setPriority(task: task)
        }
    }
    @IBAction func addUser(_ sender: Any) {
    }
    @IBAction func saveTask(_ sender: Any) {
    }
    @IBAction func deleteTask(_ sender: Any) {
    }
    
    func setPriority(task: TaskEntity) {
        if isImportant && isUrgent {
            task.priority = .Both
        } else if isImportant && !isUrgent {
            task.priority = .Important
        } else if !isImportant && isUrgent {
            task.priority = .Urgent
        } else {
            task.priority = .None
        }
    }
    
    func setModel(model: TaskEntity?) {
        if let model = model {
            task = model
            isImportant = (model.priority == .Both || model.priority == .Important)
            isUrgent = (model.priority == .Both || model.priority == .Urgent)
            isEditingMode = true
        }
    }
}
