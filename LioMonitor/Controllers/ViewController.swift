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
        
        updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateView() -> Void {
       // FDNDatabaseReference.sharedInstance.createUser(name: "Denis Nascimento", email: "denis.nascimento@m4u.com.br", password: "teste")
    }

    @IBAction func goToLogin(_ sender: Any) {
        
        if (textEmail.text?.isEmpty)! || (textPassword.text?.isEmpty)! {
            self.message(title: "Cielo Lio", message: "Informe os todos os dados")
            return
        }
        
        FDNDatabaseReference.sharedInstance.login(email: textEmail.text!, password: textPassword.text!) { (Bool, AnyObject) in
            
        }
        
    }

}

