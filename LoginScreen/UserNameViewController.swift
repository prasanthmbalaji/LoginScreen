//
//  UserNameViewController.swift
//  LoginScreen
//
//  Created by Prasanth Balaji on 10/18/19.
//  Copyright © 2019 Prasanth Balaji. All rights reserved.
//

import Foundation

import UIKit

class UsernameViewController: UIViewController {
    
    let username: String?
    let userNameLabel: UILabel = UILabel()
    
    let button = UIButton( type: .system )
    
    
    init( username: String ) {
        self.username = username
        super.init( nibName: nil, bundle: nil )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addUserNameLabel()
        
        addButton()
        
    }
    
    func addUserNameLabel() {
        
        if let username = self.username {
            userNameLabel.text = username
        }
        
        view.addSubview( userNameLabel )
        
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false;
        
        let xConstraint = userNameLabel.centerXAnchor.constraint( equalTo: view.centerXAnchor )
        
        let yConstraint = userNameLabel.centerYAnchor.constraint( equalTo: view.centerYAnchor )
        
        xConstraint.isActive = true
        
        yConstraint.isActive = true
        
        
        
    }
    
    @objc
    func buttonPressed()
    {
        print( "Button Pressed" )
        
        self.navigationController?.popViewController( animated: true )
        
        
    }
    
    func addButton() {
        
        view.addSubview( button )
        
        button.addTarget( self, action: #selector ( buttonPressed ), for: .touchUpInside )
        
        button.translatesAutoresizingMaskIntoConstraints = false;
        
        button.setTitle( "Login", for: .normal )
                     
        button.setTitleColor( .white, for: .normal )
                     
        button.backgroundColor = .blue
        
        let leftConstraint = button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20 )
        
        let rightConstraint = button.rightAnchor.constraint( equalTo: view.rightAnchor, constant: -20 )
        
        let bottomConstraint = button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200 )
        
        // Activate Constraints
        
        leftConstraint.isActive = true;
        
        rightConstraint.isActive = true;
        
        bottomConstraint.isActive = true;
        
        
        
        
        
        
    }
    
    
}
