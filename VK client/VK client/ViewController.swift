//
//  ViewController.swift
//  VK client
//
//  Created by Vladimir Pulkhrov on 03.07.2020.
//  Copyright © 2020 Vladimir Pulkhrov. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var avatarView: AvatarView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        avatarView.configure()
        
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
    
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
               scrollView.addGestureRecognizer(tapGesture)

    }
    
    @objc func keyboardWillShown(notification: Notification)
    {
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
                      
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0)
                      
        scrollView.contentInset = contentInsets
        
        scrollView.scrollIndicatorInsets = contentInsets

    }
    
    @objc func keyboardWillHide(notification: Notification)
    {
       scrollView.contentInset = UIEdgeInsets.zero
       scrollView.scrollIndicatorInsets = UIEdgeInsets.zero
    }
    
    @objc func hideKeyboard()
    {
           scrollView.endEditing(true)
    }
    
    
    
    private func checkLoginInfo() -> Bool {
        guard let loginText = loginField.text else { return false }
        guard let pwdText = passwordField.text else { return false }
        
        if loginText == "admin", pwdText == "12345" {
            print("Успешно!")
            return true
        }
        else {
            print("Не очень успешно")
            return false
        }
    }
    
    
    
    
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == "loginSegue" {
            if checkLoginInfo() {
                return true
            }
            else {
                showLoginError()
                return false
            }
        }
        
        return true
    }
    
    private func showLoginError() {
        let alert = UIAlertController(title: "Ошибка!", message: "Логин и/или пароль не верны", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
        
        
        
    
    
    
    
    
    
    
    
    @IBAction func login(_ sender: UIStoryboardSegue)
       {
           print (sender)
        }


}

