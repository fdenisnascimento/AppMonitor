//
//  FDNDatabaseReference.swift
//  LioMonitor
//
//  Created by Denis Nascimento on 23/12/16.
//  Copyright © 2016 Denis Nascimento. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth
class FDNDatabaseReference: NSObject {
    
    
    
    static let sharedInstance : FDNDatabaseReference = {
        let instance = FDNDatabaseReference()
        return instance
    }()
    
    func reference(path: String) -> FIRDatabaseReference {
        return  FIRDatabase.database().reference().child(path)
    }
    
    func referenceUser() -> FIRDatabaseReference {
        return  reference(path: "users")
    }
    
    func login(email: String, password: String, completion: @escaping (_ success: Bool, _ user: AnyObject) -> Void) {
        
        FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
            
            if error != nil {
                completion(true,user!)
            } else {
                completion(false,NSNull())
            }
        })
    }
    
    
    func signUp(name: String, email: String, password: String,  completion: @escaping (_ success: Bool, _ user: AnyObject) -> Void) {
        
        FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user, error) in
            
            if error != nil {
                completion(true,user!)
            } else {
                completion(false,NSNull())
            }
        })
    }
    
    
}
    
