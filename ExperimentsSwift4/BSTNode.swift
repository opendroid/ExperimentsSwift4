//
//  BinaryNode.swift
//  ExperimentsSwift4
//
//  Created by Ajay Thakur on 10/28/17.
//  Copyright © 2017 Ajay Thakur. All rights reserved.
//

import Foundation

/**
 BSTNode: An unbalanced BST
 
 Terminology:
 1. Binary tree
 1. Binary search tree (BST)
 1. Balanced tree (AVL tree): a tree is balanced of each sub-tree is balanced and the height
   of the two sub-trees differ by at most one
 1. BalanceFactor(N) `:= Height(RightSubtree(N)) - Height(LeftSubtree(N))`
 1. BalanceFactor(N) `∈ {–1,0,+1}`
 
 Question: How to balance a tree
*/
class BSTNode<T>{
    let value: T
    var left: BSTNode?
    var right: BSTNode?
    
    init(value: T) {
        self.value = value
    }
    
    /**
     Return height of a BST
     - Parameter Void: None
     - Returns: Height of the BST
     */
    func height() -> Int {
        var leftHeight: Int
        var rightHeight: Int
        if let leftNode = left {
            leftHeight = 1 + leftNode.height()
        } else {
            leftHeight = 0
        }
        if let rightNode = right {
            rightHeight = 1 + rightNode.height()
        } else {
            rightHeight = 0
        }
        
        return max(leftHeight, rightHeight)
    }
}

extension BSTNode: CustomStringConvertible {
    /**
     All nodes of a BST in format
     
     `{ leftNode: {..,..}, rightNode: {..,..}}`
     */
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

/**
 - Extend a BSTNode to `insert` a node
 - Implement protocol comparable
 */
extension BSTNode where T: Comparable {
    //: Check if nodes are equal
    static func == (lhs: BSTNode, rhs: BSTNode) -> Bool {
        return lhs.value == rhs.value
    }
    
    static func > (lhs: BSTNode, rhs: BSTNode) -> Bool {
        return lhs.value > rhs.value
    }
    
    static func < (lhs: BSTNode, rhs: BSTNode) -> Bool {
        return lhs.value < rhs.value
    }
    
    static func >= (lhs: BSTNode, rhs: BSTNode) -> Bool {
        return lhs.value >= rhs.value
    }
    
    static func <= (lhs: BSTNode, rhs: BSTNode) -> Bool {
        return lhs.value <= rhs.value
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
