//
//  OnboardingViewController.swift
//  Bankey
//
//  Created by Hummingbird on 26/05/2025.
//

import Foundation
import UIKit

class OnboardingViewController: UIViewController{
    let stackView = UIStackView()
    let imagaeView =  UIImageView ()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension OnboardingViewController{
    
    func style(){
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        //Image View
        imagaeView.translatesAutoresizingMaskIntoConstraints = false
        imagaeView.contentMode = .scaleAspectFit
        imagaeView.image = UIImage(named: "apple")
        
        //Label
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.text = "Bankey is faster, easier to use, and has a brand new look and feel that will make you fell like you are back in 1989."
    }
    
    func layout(){
        stackView.addArrangedSubview(imagaeView)
        stackView.addArrangedSubview(label)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
        ])
    }
}

