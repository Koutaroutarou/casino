//
//  SignUpViewController.swift
//  casino
//
//  Created by 渡辺航太郎 on 2019/06/17.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        emailTextField.delegate = self as! UITextFieldDelegate
        passwordTextField.delegate = self as! UITextFieldDelegate
        
        
    }
    
    @IBAction func willSignUp() {
        signUp()
    }
    @IBAction func willTransitionToLogin() {
        transitionToLogin()
    }
    
    func transitionToLogin() {
        self.performSegue(withIdentifier: "toLogin", sender: self)
    }

    func transitionToView() {
        self.performSegue(withIdentifier: "toView", sender: self)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func signUp() {
        //テキストフィールドに文字がなければその後の処理をしない
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: password, completion: {( User, Error)
            in
            
            if Error == nil {
                self.transitionToLogin()
                )}
        }
        
    }
    

}
