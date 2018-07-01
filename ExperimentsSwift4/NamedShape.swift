//
//  NamedShape.swift
//  ExperimentsSwift4
//
//  Created by Ajay Thakur on 7/1/18.
//  Copyright © 2018 Ajay Thakur. All rights reserved.
//

import Foundation

/**
 A basic named shape
 */
class NamedShape {
    var nSides: Int = 0
    var name: String
    
    /**
     NamedShape constructor
     - Parameter name: Name of shape
     */
    init(name: String) {
        self.name = name
    }
    /// Shape description eg: `triangle with 3 sides`
    func simpleDescription() -> String {
        return "\(name) with \(nSides) sides"
    }
}
