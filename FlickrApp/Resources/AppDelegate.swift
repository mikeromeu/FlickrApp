//
//  AppDelegate.swift
//  FlickrApp
//
//  Created by Michael Romeu on 12/5/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // This will be the override point for customization after the application launches.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // This is called when a new scene session is being created.
        // I will use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // This is called when the user discards a scene session.
        // If by chance any sessions were  possibly discarded while the application was not running then this will be called shortly after application:didFinishLaunchingWithOptions.
        // I will use this method to release any resources that were specific to the discarded scenes, as they will not be returned.
    }


}

