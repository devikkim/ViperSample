//
//  AppDelegate.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 20/03/2019.
//  Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let wireframe = RepositoriesWireframe()
        window = UIWindow(frame: UIScreen.main.bounds)
        wireframe.openMainViewAsNavigationControllerIn(window: window!)
      
        return true
    }
}

