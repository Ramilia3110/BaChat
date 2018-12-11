//
//  CreateGroupsVC.swift
//  BaChat
//
//  Created by Ramilia Imankulova on 12/11/18.
//  Copyright © 2018 Ramilia Imankulova. All rights reserved.
//

import UIKit

class CreateGroupsVC: UIViewController {
    

    @IBOutlet weak var titleTextField: InsetTextField!
    @IBOutlet weak var descriptionTextField: UILabel!
    @IBOutlet weak var emailTextFIeld: UILabel!
    @IBOutlet weak var groupMemberLbl: UILabel!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    @IBAction func donePressed(_ sender: Any) {
    }
    

    @IBAction func closePressed(_ sender: Any) {
    }
}
extension CreateGroupsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as? UserCell else {return UITableViewCell()}
        let profileImage = UIImage(named: "user")
        
        cell.configureCell(profileImage: profileImage!,username: "mar@gmail.com", isSelected: true)
        return cell
    }
    
}
