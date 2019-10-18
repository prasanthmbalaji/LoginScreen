//
//  UsernameViewController.swift
//  LoginScreen
//
//  Created by Prasanth Balaji on 10/18/19.
//  Copyright © 2019 Prasanth Balaji. All rights reserved.
//

import Foundation

import UIKit

class UsernameViewController: UIViewController {
    
    var username: String?
    
    init( username: String ) {
        super.init( nibName: nil, bundle: nil )
        self.username = username
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
