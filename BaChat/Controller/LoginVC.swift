//
//  LoginVC.swift
//  BaChat
//
//  Created by Ramilia Imankulova on 12/10/18.
//  Copyright © 2018 Ramilia Imankulova. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var userSignUpMode = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
    }
    

    @IBAction func donePressed(_ sender: Any) {
        if emailTextField.text == "" && passwordTextField.text == "" {
            print ("error")
        } else {
            if let email = emailTextField.text {
                if let password = passwordTextField.text {
                    if userSignUpMode {
                        //Sign Up
                        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                            if error != nil {
                                print (error!.localizedDescription)
                            } else {
                                self.dismiss(animated: true, completion: nil)
                            }
                        }
                    } else {
                        //Login
                        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                            if error != nil {
                                print (error!.localizedDescription)
                            }
                            else {
                                self.dismiss(animated: true, completion: nil)
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    
    
    

    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension LoginVC : UITextFieldDelegate {}
