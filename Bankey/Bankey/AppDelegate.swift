//
//  AppDelegate.swift
//  Bankey
//
//  Created by Hummingbird on 25/05/2025.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    let loginViewController = LoginViewController()
    let onboardingContainerViewController = OnboardingContainerViewController()
    let dummyViewController = DummyViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        loginViewController.delegate = self
        onboardingContainerViewController.delegate = self
        dummyViewController.logoutDelegate = self
        
        window?.rootViewController = loginViewController
        
        return true
    }
    
}

extension AppDelegate{
    func setRootViewController(_ vc: UIViewController, animated: Bool = true) {
        guard animated, let window = self.window else {
            self.window?.rootViewController = vc
            self.window?.makeKeyAndVisible()
            return
        }
        
        window.rootViewController = vc
        window.makeKeyAndVisible()
        UIView.transition(
            with: window,
            duration: 0.5,
            options: .transitionCrossDissolve,
            animations: nil,
            completion: nil
        )
    }
}


extension AppDelegate: LoginViewControllerDelegate{
    func didLogin() {
        print("DEBUG: Did login hasOnboarded \(LocalState.hasOnboarded)")
        if LocalState.hasOnboarded {
            setRootViewController(dummyViewController)
        }
        else {
            setRootViewController(onboardingContainerViewController)
        }
    }
    
}

extension AppDelegate: OnboardingContainerViewControllerDelegate {
    func didFinishOnboarding() {
        LocalState.hasOnboarded = true
        print("DEBUG: Did finish onboarding hasOnboarded \(LocalState.hasOnboarded)")
        setRootViewController(dummyViewController)
    }
}

extension AppDelegate: LogoutDelegate {
    func didLogout() {
        print("DEBUG: Did logout")
        setRootViewController(loginViewController)
    }
    
}
