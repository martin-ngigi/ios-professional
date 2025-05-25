//
//  LoginViewController.swift
//  Bankey
//
//  Created by Hummingbird on 25/05/2025.
//

import UIKit

class LoginViewController: UIViewController {
    
    let  loginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }


}


extension LoginViewController {
    func style() {
        loginView.translatesAutoresizingMaskIntoConstraints = false //
    }
    
    func layout() {
        view.addSubview(loginView)
        
        NSLayoutConstraint.activate([ // Sets isActive tot true for all contraints contained within.
           
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor), // center vertically
            loginView.centerXAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1)
        ])
    }
}
