//
//  BranchSum.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-28.
//

import Foundation

/*
 
 Give binary tree, return sum of each branch.

 e.g.
                      5
                 3         10
               2   4           12
             1

 return [11, 12, 27]

 11 = 5 + 3 + 2 + 1
 12 = 5 + 3 + 4
 27 = 5 + 10 + 12

 */

final class BranchSum {

    // t: O(n), s: O(n)
    static func solution(_ root: BST<Int>) -> [Int] {

        var result = [Int]()

        func dfs(_ root: BST<Int>?, _ runningSum: Int) {
            guard let root = root else {return}

            let newSum = runningSum + root.value

            if root.left == nil && root.right == nil {
                result.append(newSum)
            }
            dfs(root.left, newSum)
            dfs(root.right, newSum)
        }

        dfs(root, 0)

        return result
    }

}
