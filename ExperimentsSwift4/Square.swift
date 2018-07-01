//
//  Square.swift
//  ExperimentsSwift4
//
//  Created by Ajay Thakur on 7/1/18.
//  Copyright © 2018 Ajay Thakur. All rights reserved.
//

import Foundation

/**
 A square shape with `length`
 */
class Square: NamedShape {
    let length: Double
    
    /**
     initialize with
     - Parameters:
     - sideLength: Length of side
     - name: Name of shape
     */
    init(sideLength: Double, name: String?) {
        self.length = sideLength
        if let sqName = name {
            super.init(name: sqName)
        } else {
            super.init(name: "Square")
        }
        nSides = 4 // Super class
    }
    /// Perimeter of square
    var perimeter: Double {
        get {
            return 4.0 * length
        }
    }
    /**
     - Returns: Area of square
     */
    func area() -> Double {
        return length * length
    }
    
    /**
     - Returns: A square with lenth
     */
    override func simpleDescription() -> String {
        return "A square with length \(length)"
    }
}
