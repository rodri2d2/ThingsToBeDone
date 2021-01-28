//
//  ViewControllerRegister.swift
//  ThingsToBeDone
//
//  Created by Rodrigo Candido on 27/1/21.
//

import UIKit

struct ViewControllerPool {
    
    
    private var taskViewController: UINavigationController {
        let controller = TaskListViewController()
        controller.title = "Things to be done..."        
        let viewController = UINavigationController(rootViewController: controller)
        return viewController
    }
    
    private var detailTaskViewController: UINavigationController {
        let controller = TaskListViewController()
        let viewController = UINavigationController(rootViewController: controller)
        return viewController
    }


    
    func controller(for controllerName: Krontrollers) -> UINavigationController {
        
        switch controllerName {
            case .mainViewController , .taskListController:
                return self.taskViewController
            case .detailTaskController:
                return self.detailTaskViewController

        }
        
    }
    
}
