//
//  UIViewControllerAndUtils.swift
//  Bankey
//
//  Created by Hummingbird on 28/05/2025.
//

import UIKit

extension UIViewController {
    
    /*
    func setStatusBar(){
        let statusBarSize = UIApplication.shared.statusBarFrame.size //'statusBarFrame' was deprecated in iOS 13.0: Use the statusBarManager property of the window scene instead.
        let frame = CGRect(origin: .zero, size: statusBarSize)
        let statusBarView = UIView(frame: frame)
        
        statusBarView.backgroundColor  = appColor
        view.addSubview(statusBarView)
    }
    */
    
    func setStatusBar() {
           let navBarAppearance = UINavigationBarAppearance()
           navBarAppearance.configureWithTransparentBackground() // to hide Navigation Bar Line also
           navBarAppearance.backgroundColor = appColor
           UINavigationBar.appearance().standardAppearance = navBarAppearance
           UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
       }
    
    func setTabBarImage(imageName: String, title: String){
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
