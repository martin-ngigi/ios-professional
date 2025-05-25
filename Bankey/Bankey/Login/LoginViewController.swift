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
        
        // LoginView
        NSLayoutConstraint.activate([ // Sets isActive tot true for all contraints contained within.
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 2),
            view.centerYAnchor.constraint(equalTo: loginView.centerYAnchor), // center vertically
        ])
               
    }
}
