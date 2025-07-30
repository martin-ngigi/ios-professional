//
//  ViewController.swift
//  Password
//
//  Created by Hummingbird on 21/07/2025.
//

import UIKit

import UIKit

class ViewController: UIViewController{
    
    let newPasswordTextField = PasswordTextField(placeHolderText: "New Password")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension ViewController{
    func style(){
        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout(){
        view.addSubview(newPasswordTextField)
        
        NSLayoutConstraint.activate([
            newPasswordTextField.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: newPasswordTextField.trailingAnchor, multiplier: 1),
            newPasswordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}


