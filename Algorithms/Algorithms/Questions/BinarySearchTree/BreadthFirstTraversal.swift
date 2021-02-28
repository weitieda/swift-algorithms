//
//  BreadthFirstTraversal.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-27.
//

import Foundation

/*

 Traverse a tree layer by layer
 
                   40
               30       50
             20  35   45
           10

 ->

  [40, 30, 50, 20, 35, 45, 10]
 
 */

final class BreadthFirstTraversal {

    // t: O(n), s: O(n)
    static func stackSolution(_ root: BST<Int>) -> [Int] {

        var result = [Int]()

        var queue = [root]
        while !queue.isEmpty {

            let current = queue.removeFirst()

            result.append(current.value)

            if let left = current.left {
                queue.append(left)
            }

            if let right = current.right {
                queue.append(right)
            }
        }

        return result
    }

}
