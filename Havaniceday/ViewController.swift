//
//  ViewController.swift
//  Havaniceday
//
//  Created by MA on 2023/06/18.
//

import UIKit
import RealmSwift

class ViewController: UIViewController,UITableViewDataSource{
    @IBOutlet var tableView:UITableView!
    let realm = try! Realm()
    var wannaDoList: List<WannaDo>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: <#T##String#>, bundle: nil), forCellReuseIdentifier: <#T##String#>)
        wannaDoList = readItems()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wannaDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
               cell.selectionStyle = .none //　見た目関連おまじない
               let titleLabel = cell.contentView.viewWithTag(1) as! UILabel //StoryBoardで設定したTagの番号を使ってる
               let categoryImageView = cell.contentView.viewWithTag(2) as! UIImageView
               titleLabel.text = #####################
               categoryImageView.image = UIImage(named: ##################)
               return cell
           }
    
    func readItems(){
            wannaDoList = realm.objects(WannaDoList.self).first?.list
     }


}

