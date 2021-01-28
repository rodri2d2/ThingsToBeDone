//
//  Coordinator.swift
//  ThingsToBeDone
//
//  Created by Rodrigo Candido on 27/1/21.
//

import Foundation

/**
 Coordinator Pattern based protocol
 
 Use this protocol to implement a navigation flow based on **Coordinator Pattern**
 
 */
protocol Coordinator: class {
    
    /// All class that conforms this protocol and has a Coordinator flow
    var childrem: [Coordinator] { get set }
    
    /// Start method to be called whenever a new ViewController is needed
    func start()
    
    /// Finish method to be called whenever a ViewController should dismiss
    func finish()
    
}
