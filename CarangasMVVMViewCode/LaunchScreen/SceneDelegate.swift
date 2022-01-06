//
//  SceneDelegate.swift
//  CarangasMVVMViewCode
//
//  Created by Yago De Moura Silva on 03/01/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: scene)
        window?.rootViewController = LaunchScreenViewController()
        window?.makeKeyAndVisible()
    }
}
