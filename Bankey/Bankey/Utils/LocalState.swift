//
//  LocalState.swift
//  Bankey
//
//  Created by Hummingbird on 28/05/2025.
//

import Foundation

public class LocalState{
    private enum Keys: String{
        case hasOnboarded
    }
    
    public static var hasOnboarded: Bool {
        get {
            UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        } set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
            UserDefaults.standard.synchronize()
        }
    }
}
