//
//  AppCoordinator.swift
//  ThingsToBeDone
//
//  Created by Rodrigo Candido on 27/1/21.
//

import UIKit

/**
 This class controls the entire app navigation based on Coordinator Pattern. It is Main Coordinator Class
 
 Its start method asign to app Window a rootNavigationController as UINavigationController or any kind of UIViewController
 
 - Author: Rodrigo Candido
 - Version: v1.0
 */
class AppCoordinator: Coordinator{
    
    
    // MARK: - Class Properties
    let window: UIWindow!
    let viewControllerPool = ViewControllerPool()
    let presenter = UINavigationController()
    
    // MARK: - Coordinator Implemantation Properties
    var childrem: [Coordinator] = []
    
    // MARK: - Lifecycle
    init(aplicationWindow: UIWindow) {
        self.window = aplicationWindow
    }
    
    // MARK: - Coordinator Implemantation Methods
    func start() {
        
        //Setup main controller
        let mainController  = viewControllerPool.controller(for: .mainViewController) as UINavigationController
        
        
        //
        let taskListCoordinator = TaskListCoordinator(presenter: mainController)
        taskListCoordinator.start()
        
        
        self.window.rootViewController = mainController
        self.window.makeKeyAndVisible()
        
    }
    
    func finish() {}
    
    
}
