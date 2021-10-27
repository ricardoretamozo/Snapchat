//
//  ViewController.swift
//  Snapchat
//
//  Created by ricardo on 10/27/21.
//  Copyright © 2021 ricardo. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {
            (user, error) in
            if error != nil {
                print("se prsento el siguiente errror  \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
}

