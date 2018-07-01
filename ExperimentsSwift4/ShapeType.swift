//
//  ShapeType.swift
//  ExperimentsSwift4
//
//  Created by Ajay Thakur on 7/1/18.
//  Copyright © 2018 Ajay Thakur. All rights reserved.
//

import Foundation
/**
 Enum for the shape. Defines enums for
   - circle
   - triangle
   - equilateralTriangle
   - isoscelesTriangle
   - scaleneTriangle
   - square
   - rectangle
 */
enum ShapeType: Int {
    case circle = 0
    case triangle
    case equilateralTriangle
    case isoscelesTriangle
    case scaleneTriangle
    case square
    case rectangle
    /// Shape name
    func simpleDescrption() -> String {
        switch self {
        case .circle:
            return "Circle"
        case .triangle:
            return "Triangle"
        case .equilateralTriangle:
            return "Equilateral Triangle"
        case .isoscelesTriangle:
            return "Isosceles Triangle"
        case .scaleneTriangle:
            return "Scalene Triangle"
        case .square:
            return "Square"
        case .rectangle:
            return "Rectangle"
        }
    }
}
