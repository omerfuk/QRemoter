//
//  ViewController.swift
//  QRemoter
//
//  Created by Ömer Faruk Kılıçaslan on 29.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    let name = "a"
    let password = "a"
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        if usernameTextField.text == name && passwordTextField.text == password {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ChooseViewController") as! ChooseViewController
            
            self.show(vc, sender: nil)
            
            
        }
        else{
            let alert = UIAlertController(title: "Warning", message: "Username or password is incorrect, Please try again.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)

        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //Looks for single or multiple taps.
             let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

            
            tap.cancelsTouchesInView = false

            view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }


}

