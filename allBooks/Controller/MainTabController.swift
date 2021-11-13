//
//  MainTabController.swift
//  allBooks
//
//  Created by Gabriel do Prado Moreira on 12/11/21.
//

import Foundation
import UIKit

class MainTabController: UITabBarController {
    
    //MARK: - Properties
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViewController()
    }
    //MARK: - Selectors
    
    //MARK: - Helpers
    func setUpViewController() {
        let explorer = ExplorerViewController()
        let explorerNC = setUpNavigationController(image: UIImage(systemName: "book"), viewController: explorer)
        
        let profile = ProfileViewController()
        let profileNC = setUpNavigationController(image: UIImage(systemName: "person"), viewController: profile)
        
        let settings = SettingsViewController()
        let settingsNC = setUpNavigationController(image: UIImage(systemName: "gearshape"), viewController: settings)
        
        viewControllers = [explorerNC, profileNC, settingsNC]
    }
    
    func setUpNavigationController(image: UIImage?, viewController: UIViewController) -> UINavigationController {
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem.image = image
//        navigationController.navigationBar.barTintColor = .white
        return navigationController
        
    }
}
