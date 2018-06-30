//
//  BinaryNode.swift
//  ExperimentsSwift4
//
//  Created by Ajay Thakur on 10/28/17.
//  Copyright © 2017 Ajay Thakur. All rights reserved.
//


// Terminology:
//  Binary tree:
//  Binary search tree (BST):
//      left node <= current node. right node > current node
//      rigt node < current node
//  Balanced tree (AVL tree): "a tree is balanced of each sub-tree is balanced and the height
//          of the two sub-trees differ by at most one
//  BalanceFactor(N) := Height(RightSubtree(N)) - Height(LeftSubtree(N))
//  BalanceFactor(N) ∈ {–1,0,+1}
//  Question: How to balance a tree
import Foundation

// BSTNode: An unbalanced BST
class BSTNode<T>{
    let value: T
    var left: BSTNode?
    var right: BSTNode?
    
    init(value: T) {
        self.value = value
    }
    
    func height() -> Int {
        var leftHeight: Int
        var righHeight: Int
        if let leftNode = left {
            leftHeight = 1 + leftNode.height()
        } else {
            leftHeight = 0
        }
        if let rightNode = right {
            righHeight = 1 + rightNode.height()
        } else {
            righHeight = 0
        }
        
        return max(leftHeight, righHeight)
    }
}

// Print Noce: { leftNode: {..,..}, rightNode: {..,..}}
extension BSTNode: CustomStringConvertible {
    var description: String {
        var text = "\(value)"
        if let lNode = left {
            text += " L: {\(lNode.description)"   // <<= recurrsion
        }
        if let rNode = right {
            text += ", R: \(rNode.description)}"
        }
        return text
    }
}

// Insert a node in a BST
extension BSTNode where T: Comparable {
    static func == (lhs: BSTNode, rhs: BSTNode) -> Bool {
        return lhs.value == rhs.value
    }
    
    static func > (lhs: BSTNode, rhs: BSTNode) -> Bool {
        return lhs.value > rhs.value
    }
    
    static func < (lhs: BSTNode, rhs: BSTNode) -> Bool {
        return lhs.value < rhs.value
    }
    
    func insert(node: BSTNode) {
        if node > self {
            if let rNode = right {
                rNode.insert(node: node)
            } else {
                right = node
            }
        } else {
            if let lNode = left {
                lNode.insert(node: node)
            } else {
                left = node
            }
        }
    }
}
