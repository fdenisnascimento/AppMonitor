//
//  ViewController.swift
//  LioMonitor
//
//  Created by Denis Nascimento on 23/12/16.
//  Copyright © 2016 Denis Nascimento. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textEmail: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    @IBAction func goToLogin(_ sender: Any) {
        
        if (textEmail.text?.isEmpty)! || (textPassword.text?.isEmpty)! {
            self.message(title: "Cielo Lio", message: "Informe os todos os dados")
            return
        }
        
        FDNDatabaseReference.sharedInstance.login(email: textEmail.text!, password: textPassword.text!) { (success, result) in
            if success {
                print("success")
            }else{
                print("failure")
            }
        }
    }

}

