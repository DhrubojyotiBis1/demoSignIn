//
//  ViewController.swift
//  google_SignIn_Demo
//
//  Created by Dhrubojyoti on 24/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit
import GoogleSignIn
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setup()
    }


    @IBAction private func googleSignInButtonPressed(_ sender:UIButton){
       GIDSignIn.sharedInstance().signIn()
    }
    
}

extension ViewController{
    //All private functions
    
    private func setup(){
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
    }
}

