//
//  FindClosestValueInBST.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-15.
//

import Foundation

/*
 
 Write a function that takes in a Binary Search Tree (BST)
 and a target integer value and returns the closest value
 to that target value contained in the BST.
 
 You can assume that there will only be one closest value.

 Each BST node has an integer `value`, a `left` child node,
 and a `right` child node.
 A node is aid to be valid `BST` node if and only if it
 satisfies the BST property: it's `value` is strictly greater
 than the values of every node to its left;
 its `value` is less than or equal to the values of every node
 to its right; and it's children modes are either valid `BST`
 nodes themselves or `Null`.

 e.g.

 tree =     10
           /   \
          5    15
         / \   / \
        2   5 13 22
       /       \
      1         14

 target = 12
 -> 13

 */

final class FindClosestValueInBST {

    // t: O(n), s: O(depth)
    static func solution(_ tree: BST<Int>, target: Int) -> Int {
        var closest = Int.max

        tree.traverse { value in
            if abs(target - value) < abs(closest - target) {
                closest = value
            }
        }

        return closest
    }
}

extension BST {
    func traverse(completion: (T) -> Void) {
        inOrderTraverse(bst: self, completion: completion)
    }

    func inOrderTraverse(bst: BST<T>?, completion: (T) -> Void) {
        guard let bst = bst else {return}
        inOrderTraverse(bst: bst.left, completion: completion)
        completion(bst.value)
        inOrderTraverse(bst: bst.right, completion: completion)
    }
}
