//
//  Circle.swift
//  ExperimentsSwift4
//
//  Created by Ajay Thakur on 7/1/18.
//  Copyright © 2018 Ajay Thakur. All rights reserved.
//

import Foundation

class Circle: NamedShape {
    let radius: Double
    
    /**
     initialize with
     - Parameters:
     - sideLength: Length of side
     - name: Name of shape
     */
    init(radius: Double, name: String?) {
        self.radius = radius
        if let circleName = name {
            super.init(name: circleName)
        } else {
            super.init(name: "Circle")
        }
        nSides = 1 // Super class
    }
    /// Perimeter of square
    var perimeter: Double {
        get {
            return 2.0 * radius * Double.pi
        }
    }
    /**
     - Returns: Area of square
     */
    func area() -> Double {
        return radius * radius * Double.pi
    }
    
    /**
     - Returns: A square with lenth
     */
    override func simpleDescription() -> String {
        return "A circle with radius \(radius)"
    }
}
