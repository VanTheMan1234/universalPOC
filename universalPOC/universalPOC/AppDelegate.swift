//
//  AppDelegate.swift
//  universalPOC
//
//  Created by Vanoshan  Ramdhani on 2020/04/07.
//  Copyright © 2020 Vanoshan  Ramdhani. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
//        let flowLayout = UICollectionViewFlowLayout()
//        let customCollectionViewController = CustomCollectionViewController(collectionViewLayout: flowLayout)

      window?.rootViewController = UINavigationController(rootViewController: CustomCollectionViewController())
        
        return true
    }

}

