//
//  MonthDetailVC.swift
//  mytine
//
//  Created by 황수빈 on 2020/08/29.
//  Copyright © 2020 황수빈. All rights reserved.
//

import UIKit

class MonthDetailVC: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}
extension MonthDetailVC: UITableViewDelegate {
    
}

extension MonthDetailVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell.init()
    }
}
