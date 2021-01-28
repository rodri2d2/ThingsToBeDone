//
//  TaskListCoordinator.swift
//  ThingsToBeDone
//
//  Created by Rodrigo Candido on 27/1/21.
//

import UIKit


class TaskListCoordinator: Coordinator {
    
    
    // MARK: - Class Properties
    let viewControllerPool = ViewControllerPool()
    let presenter:   UINavigationController
    
    // MARK: - Coordinator Implemantation Properties
    var childrem: [Coordinator] = []
    
    // MARK: - Lifecycle
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    
    // MARK: - Coordinator Implemantation Methods
    func start() {
        
        
    }
    
    func finish() {
        
    }
    
    
}
