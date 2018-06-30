//
//  node.swift
//  ExperimentsSwift4
//
//  Created by Ajay Thakur on 10/28/17.
//  Copyright © 2017 Ajay Thakur. All rights reserved.
//

import Foundation

// A forest node
class ForestNode<T> {
    let value: T
    var children: [ForestNode] = []
    weak var parent: ForestNode?
    
    init(value: T) {
        self.value = value
    }
    
    func add(child: ForestNode) {
        children.append(child)
        child.parent = self
    }
    
    func height() -> Int {
        if !children.isEmpty {
            return children.map{ 1 + $0.height()}.max()!
        }
        return 0
    }
}

extension ForestNode: CustomStringConvertible {
    var description: String {
        var text = " \(value)"
        if !children.isEmpty {
            text += ": {" + children.map{$0.description}.joined(separator: ",") + "}"
        }
        return text
    }
}

extension ForestNode where T: Equatable {
    
    func search(value: T) -> ForestNode? {
        if value == self.value {
            return self
        }
        for child in children {
            if let found = child.search(value: value) {
                return found
            }
        }
        return nil
    }
}

extension ForestNode where T: Comparable {
    static func == (lhs: ForestNode, rhs: ForestNode) -> Bool {
        return lhs.value == rhs.value
    }
    
    static func > (lhs: ForestNode, rhs: ForestNode) -> Bool {
        return lhs.value > rhs.value
    }
    
    static func < (lhs: ForestNode, rhs: ForestNode) -> Bool {
        return lhs.value < rhs.value
    }
    
    func sortNode() {
        if !children.isEmpty {
            for child in children {
                child.sortNode()
            }
            children.sort{$0 < $1}
        }
    }
    
    func sortAlternateNode(ascending: Bool) {
        if !children.isEmpty {
            for child in children {
                child.sortAlternateNode(ascending: !ascending)
            }
            if (ascending) {
                children.sort{$0 < $1}
            } else {
                children.sort{$0 > $1}
            }
        }
    }
}
