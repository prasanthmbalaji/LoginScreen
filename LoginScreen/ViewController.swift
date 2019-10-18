//
//  ViewController.swift
//  LoginScreen
//
//  Created by Prasanth Balaji on 10/11/19.
//  Copyright © 2019 Prasanth Balaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let userNameField = UITextField()
    
    let passwordField = UITextField()
    
    var logoView = UIImageView()
    
    let loginButton = UIButton( type: .system )
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //addLabel()
        
        // Add logo
        
        addLogo()
        
        // Add text fields for user and password
        
        addUserNameField()
        
        addPasswordField()
        
        // Add login button
        
        addLoginButton()
        

        
        
        
        
    }
    
    func addUserNameField()
    {
        
        // Create text field
        
        
        //userNameField.placeholder = "Username"
        
        userNameField.delegate = self
        
        userNameField.textAlignment = .center
        
        // Set the placeholder
        
        userNameField.placeholder = "Username"
        
        view.addSubview( userNameField )
        
        userNameField.translatesAutoresizingMaskIntoConstraints = false;
        
        let yConstraint = userNameField.centerYAnchor.constraint( equalTo: view.centerYAnchor, constant: -20 )
        
        let leftConstraint = userNameField.leftAnchor.constraint( equalTo: view.leftAnchor, constant: 20 )
        
        let rightConstraint = userNameField.rightAnchor.constraint( equalTo: view.rightAnchor, constant: 20 )
        
        //userNameField.backgroundColor = .
        
        yConstraint.isActive = true
        
        leftConstraint.isActive = true
        
        rightConstraint.isActive = true
        
    }
    
    func addPasswordField()
    {
        
        // Create text field
                
        //passwordField.placeholder = "Username"
        
        passwordField.delegate = self
        
        passwordField.textAlignment = .center
        
        // Set the placeholder
        
        passwordField.placeholder = "Password"
        
        view.addSubview( passwordField )
        
        passwordField.translatesAutoresizingMaskIntoConstraints = false;
        
        let yConstraint = passwordField.centerYAnchor.constraint( equalTo: view.centerYAnchor, constant: 20 )
        
        let leftConstraint = passwordField.leftAnchor.constraint( equalTo: view.leftAnchor, constant: 20 )
        
        let rightConstraint = passwordField.rightAnchor.constraint( equalTo: view.rightAnchor, constant: 20 )
        
        //userNameField.backgroundColor = .
        
        yConstraint.isActive = true
        
        leftConstraint.isActive = true
        
        rightConstraint.isActive = true
        
    }
    
    func addLogo()
    {
        
        // Create UIImageView
        
        // Add insta logo to UImageView
        
        logoView.image = UIImage( named: "instagram-logo.png" )
            
        // Set aspect ratio
        
        logoView.contentMode = .scaleAspectFit
        
        // Add imageview as subview
        
        view.addSubview( logoView )
        
        // Set translates
        
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        // Add constraints
        
        let topConstraint = logoView.topAnchor.constraint( equalTo: view.topAnchor, constant: 70 )
        
        let xConstraint = logoView.centerXAnchor.constraint( equalTo: view.centerXAnchor )
        
        let widthConstraint = logoView.widthAnchor.constraint( equalToConstant: 250 )
        
        
        
        // Activate constraints
        
        topConstraint.isActive = true
        
        xConstraint.isActive = true
        
        widthConstraint.isActive = true
        
        //
        
        
    }
    
    
    
    func addLoginButton()
    {
        
        view.addSubview( loginButton )
        
        loginButton.addTarget( self, action: #selector( loginButtonPressed ), for: .touchUpInside )
        
        //passwordField.delegate = self
               
               
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        loginButton.setTitle( "Login", for: .normal )
        
        loginButton.setTitleColor( .white, for: .normal )
        
        loginButton.backgroundColor = .blue
        
        let bottomConstraint = loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
        
        let leftConstraint = loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20 )
        
        let rightConstraint = loginButton.rightAnchor.constraint( equalTo: view.rightAnchor, constant: -20 )
        
        bottomConstraint.isActive = true
        
        leftConstraint.isActive = true
        
        rightConstraint.isActive = true
        
        
        
        
    }
    @objc
    func loginButtonPressed() {
        
        print( "Button Pressed" )
        
        if let username = userNameField.text,
        let password = passwordField.text {
            
            if ( !username.isEmpty && !password.isEmpty ) {
                
                print( username )
                
                let usernameViewController = UsernameViewController( username: username )
                
                self.navigationController?.pushViewController( usernameViewController, animated: true )
                
            }
            else {
                
                print( "Not Entered" )
                
            }
            
            
        }
            
        
    }
    
    
    /*func addLabel()
    {
        
        // Create Label
        
        var label = UILabel()
        
        // Set translatesAutoresizingMaskIntoConstraints = false
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // Set Text
        
        label.text = "Label"
        
        // Add label as subview
        
        view.addSubview( label )
        
        // Create constraints
        
        let xConstraint = label.centerXAnchor.constraint( equalTo: view.centerXAnchor )
        
        let yConstraint = label.centerYAnchor.constraint( equalTo: view.centerYAnchor )
        
        // Activate the constraints
        
        xConstraint.isActive = true
        
        yConstraint.isActive = true
        
    }*/


}

extension ViewController: UITextFieldDelegate
{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        
        // Dismiss the keyboard
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField)
    {
        
        print( "User started typing" )
        
    }
    
}

