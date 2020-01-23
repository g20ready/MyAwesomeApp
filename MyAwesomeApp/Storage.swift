//
//  UserDefaults.swift
//  MyAwesomeApp
//
//  Created by Tzatzo, Marsel, Vodafone Greece on 06/12/2019.
//  Copyright © 2019 Marsel Tzatzo. All rights reserved.
//

import Foundation

class Storage {
    
    fileprivate let userDefaults: UserDefaults?
    
    static let shared = Storage()
    
    fileprivate init() {
        #if DEVELOPMENT
        userDefaults = UserDefaults(suiteName: "group.com.max.MyAwesomeApp.dev")
        #elseif PRODUCTION
        userDefaults = UserDefaults(suiteName: "group.com.max.MyAwesomeApp")
        #endif
    }
    
}
