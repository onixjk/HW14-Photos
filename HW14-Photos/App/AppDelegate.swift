//
//  AppDelegate.swift
//  HW14-Photos
//
//  Created by Onix qq on 24.07.22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setWindow()
        return true
    }
    
    private func setupTabBar() -> UITabBarController {
        let tabBar = UITabBarController()
        
        let libraryViewController = LibraryViewController()
        let libraryNavigationController = UINavigationController(rootViewController: libraryViewController)
        libraryNavigationController.navigationBar.prefersLargeTitles = true
        libraryViewController.tabBarItem = UITabBarItem(title: Strings.libraryTitle,
                                                        image: UIImage(systemName: Strings.libraryIcon),
                                                        tag: 0)
        
        let forYouViewController = ForYouViewController()
        let forYouNavigationController = UINavigationController(rootViewController: forYouViewController)
        forYouNavigationController.navigationBar.prefersLargeTitles = true
        forYouViewController.tabBarItem = UITabBarItem(title: Strings.forYouTitle,
                                                       image: UIImage(systemName: Strings.forYouIcon),
                                                       tag: 1)
        
        let albumsViewController = AlbumsViewController()
        let albumsNavigationController = UINavigationController(rootViewController: albumsViewController)
        albumsNavigationController.navigationBar.prefersLargeTitles = true
        albumsViewController.tabBarItem = UITabBarItem(title: Strings.albumTitle,
                                                       image: UIImage(systemName: Strings.albumIcon),
                                                       tag: 2)
        
        let searchViewController = SearchViewController()
        let searchNavigationController = UINavigationController(rootViewController: searchViewController)
        searchNavigationController.navigationBar.prefersLargeTitles = true
        searchViewController.tabBarItem = UITabBarItem(title: Strings.searchTitle,
                                                       image: UIImage(systemName: Strings.searchIcon),
                                                       tag: 3)
        
        tabBar.setViewControllers([libraryNavigationController,
                                   forYouNavigationController,
                                   albumsNavigationController,
                                   searchNavigationController],
                                  animated: true)
        return tabBar
    }
    
    func setWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = setupTabBar()
        window?.makeKeyAndVisible()
    }
}

