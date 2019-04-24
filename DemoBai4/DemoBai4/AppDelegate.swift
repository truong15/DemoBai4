//
//  AppDelegate.swift
//  DemoBai4
//
//  Created by Nguyen Van Truong on 4/24/19.
//  Copyright © 2019 Truong Nguyen V. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = HomeViewControler()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }


}

