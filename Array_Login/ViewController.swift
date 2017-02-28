//
//  ViewController.swift
//  Array_Login
//
//  Created by Nguyen Cong Toan on 2/24/17.
//  Copyright © 2017 mr.t. All rights reserved.
//

import UIKit
import  Darwin

class ViewController: UIViewController, UITableViewDelegate  {

    @IBOutlet weak var tf_user: UITextField!
    @IBOutlet weak var tf_pass: UITextField!
    
    @IBOutlet weak var btn_view: UIButton!
  
    @IBOutlet weak var lb_notifi: UILabel!
    @IBOutlet weak var btn_addview: UIButton!
    @IBOutlet weak var btn_updateview: UIButton!
    @IBOutlet weak var btn_deleteview: UIButton!
    
    @IBOutlet weak var btn_loginview: UIButton!
    @IBOutlet weak var btn_exitview: UIButton!
    
   var users = ["congtoan":"congtoan89","nguyen":"nguyen92"]
    
    
    // login
    @IBAction func btn_login(_ sender: UIButton) {
        if let password = users[tf_user.text!]
        {
            if password == tf_pass.text
            {
                btn_view.isHidden = false
                btn_addview.isHidden = false
                btn_updateview.isHidden = false
                btn_deleteview.isHidden = false
                btn_exitview.isHidden = false
                xoa()
                btn_loginview.isHidden = true
            }
            else
            {
                lb_notifi.text = "Password not right"
                lb_notifi.isHidden = false
                xoa()
            }
        }
        
    }

    @IBAction func btn_exit(_ sender: UIButton) {
        exit(0)
    }
    // Add user
    @IBAction func btn_add(_ sender: UIButton) {
        
        if users[tf_user.text!] != nil // kiem tra user co ton tai hay k
        {
            lb_notifi.text = "Username da ton tai"
            lb_notifi.isHidden = false
            xoa()
           
        }
        else
        {
        users[tf_user.text!] = tf_pass.text
        for (user,password) in users
        {
            lb_notifi.text = "Add Complete"
            lb_notifi.isHidden = false
            print("Username: \(user)")
            print(password)
            xoa()
            
        }
    }
    }
    
    // xoa theo key nhap vao
    @IBAction func btn_delete(_ sender: UIButton) {
        if users[tf_user.text!] != nil
        {
            users.removeValue(forKey: tf_user.text!)
            lb_notifi.text = "Delete Complete"
            lb_notifi.isHidden = false
            xoa()
        }
        else
        {
            lb_notifi.text = "Username not right"
            lb_notifi.isHidden = false
            xoa()
        }
        
    }
    
    
    @IBAction func btn_update(_ sender: UIButton) {
        if users[tf_user.text!] != nil
        {
            users[tf_user.text!] = tf_pass.text
            for (user,password) in users
            {
                lb_notifi.text = "Update Complete"
                lb_notifi.isHidden = false
                print("Update Complete User: \(user), PassWord: \(password) ")
                xoa()
            }
        }else
        {
            lb_notifi.text = "Username not right"
            lb_notifi.isHidden = false
            print("Username not right \(tf_user.text!)")
            xoa()
        }
    }
    // print user, pass
    // viec muon lam la show thong tin len table view
    @IBAction func btn_friendlist(_ sender: UIButton) {
        for (user , password) in users
        {
           print("Name: \(user) , Password: \(password)") //\  ""
        }
    }
    func xoa()
    {
        tf_user.text = nil
        tf_pass.text = nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
