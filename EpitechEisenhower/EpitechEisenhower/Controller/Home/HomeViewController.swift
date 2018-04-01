//
//  HomeViewController.swift
//  EpitechEisenhower
//
//  Created by Teddy Carneiro on 31/03/2018.
//  Copyright © 2018 Teddy Carneiro. All rights reserved.
//

import UIKit
//import Alamofire

class HomeViewController: UIViewController {
    @IBOutlet weak var collection: UICollectionView!
    private var results = [TaskEntity]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = UserEntity(id: 1, createdOn: Date(), modifiedOn: Date(), email: "julie@epitech.eu")
        results.append(TaskEntity(id: 1, createdOn: Date(), modifiedOn: Date(), title: "Un petit test de peut-être plusieurs lignes", description: "", owner: user))
        results.append(TaskEntity(id: 2, createdOn: Date(), modifiedOn: Date(), title: "Un second test un peut plus court", description: "", owner: user))
        results.append(TaskEntity(id: 3, createdOn: Date(), modifiedOn: Date(), title: "Dernier test", description: "", owner: user))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return results.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AddNewTask", for: indexPath) as! AddTaskCollectionViewCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Task", for: indexPath) as! TaskDetailCollectionViewCell
            cell.setData(task: results[indexPath.row - 1])
            cell.backgroundColor = .red
            cell.roundCorner()
            return cell
        }
    }
}

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let detailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detailVC") as? TaskDetailViewController {
            if (indexPath.row != 0) {
                detailViewController.setModel(model: results[indexPath.row - 1])
            }
            navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
}
