//
//  LoginViewController.swift
//  Bankey
//
//  Created by Hummingbird on 25/05/2025.
//

import UIKit

class LoginViewController: UIViewController {
    
    let  loginView = LoginView()
    let signInButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }


}


extension LoginViewController {
    func style() {
        loginView.translatesAutoresizingMaskIntoConstraints = false
        
        // SignIn Button
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.configuration = .filled()
        signInButton.configuration?.imagePadding = 8
        signInButton.setTitle("Sign In", for: [])
        signInButton.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
    }
    
    func layout() {
        view.addSubview(loginView)
        view.addSubview(signInButton)
        
        // LoginView
        NSLayoutConstraint.activate([ // Sets isActive tot true for all contraints contained within.
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 2),
            view.centerYAnchor.constraint(equalTo: loginView.centerYAnchor), // center vertically
        ])
        
        // Button
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 2),
            signInButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor)
        ])
               
    }
}

//MARK: Actions
extension LoginViewController{
    @objc func signInTapped() {
        print("Sign In Tapped")
    }
}
