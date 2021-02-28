//
//  DepthFirstTraversal.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-27.
//

import Foundation

/*
              40
          30       50
        20  35   45
      10

 ->
 10 20 35 30

*/

final class DepthFirstTraversal {

    // t: O(n), s: O(n)
    static func stackSolution(_ root: BST<Int>) -> [Int] {
        var stack = [root]

        var result = [Int]()

        while !stack.isEmpty {
            let current = stack.popLast()!
            result.append(current.value)

            if let right = current.right {
                stack.append(right)
            }

            if let left = current.left {
                stack.append(left)
            }
        }

        return result
    }

}
