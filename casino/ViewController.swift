//
//  ViewController.swift
//  casino
//
//  Created by 渡辺航太郎 on 2019/06/17.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit
import Firebase


class ViewController: UIViewController {

    @IBOutlet var name: UITextField!
    @IBAction func add(_ sender: AnyObject) {
        
        let data = ["name": name.text!]
        DBRef.child("user/01").setValue(data)
        
    }
    var DBRef: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DBRef = Database.database().reference()
    }
    
    @IBOutlet var nameText: UITextField!
    @IBOutlet var mailText: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    @IBAction func didTapSignUpButton() {
        
    }
    



}

