//
//  ProfileVC.swift
//  BaChat
//
//  Created by Ramilia Imankulova on 12/10/18.
//  Copyright © 2018 Ramilia Imankulova. All rights reserved.
//

import UIKit
import Firebase

class ProfileVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var emailLbl: UILabel!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         self.emailLbl.text = Auth.auth().currentUser?.email
    }

    @IBAction func signOutPressed(_ sender: Any) {
        // sign out user
        let logoutAlert = UIAlertController(title: "Logout", message: "Are you sure you want to logout?", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "YES", style: .destructive) { (buttonPressed) in
            do {
                try Auth.auth().signOut()
                let welcomeVC = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeVC") as? WelcomeVC
                self.present(welcomeVC!, animated: true, completion: nil)
            } catch {
                print (error)
                }
        }
        logoutAlert.addAction(action)
        present(logoutAlert, animated: true, completion: nil)
    }
    

}
