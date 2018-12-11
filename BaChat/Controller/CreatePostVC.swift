//
//  CreatePostVC.swift
//  BaChat
//
//  Created by Ramilia Imankulova on 12/11/18.
//  Copyright © 2018 Ramilia Imankulova. All rights reserved.
//

import UIKit
import  Firebase

class CreatePostVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var postTextView: UITextView!
    
    @IBOutlet weak var sendBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postTextView.delegate = self
        sendBtn.bindToKeyBoard()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.emailLbl.text = Auth.auth().currentUser?.email
    }
    

    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func sendPressed(_ sender: Any) {
        if postTextView.text != nil && postTextView.text != "Put comment here" {
            sendBtn.isEnabled = false
            DataService.instance.uploadPost(withMessage: postTextView.text, fotUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil) { (isComplete) in
                if isComplete {
                    self.sendBtn.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                } else {
                    self.sendBtn.isEnabled = true
                    print ("There was an error")
                }
            }
        }
    }
}
extension CreatePostVC: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        postTextView.text = ""
    }
}
