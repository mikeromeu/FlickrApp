//
//  SceneDelegate.swift
//  FlickrApp
//
//  Created by Michael Romeu on 12/5/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // I will use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If by chance using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This particular delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        let vc = FlickrImagesViewController()
        let navController = UINavigationController(rootViewController: vc)
        self.window?.rootViewController = navController
        self.window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // This is called as the scene is being released by the system.
        // This func occurs shortly after the scene enters the background, or when its session is discarded.
        // This will release any resources associated with this scene that can be re-created the next time the scene connects.
        // Be wary the scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // This is called when the scene has moved from an inactive state to an active state.
        // I will use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // This is called when the scene will move from an active state to an inactive state.
        // This possibly may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // This is called as the scene transitions from the background to the foreground.
        // I will use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // This is called as the scene transitions from the foreground to the background.
        // I will use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

