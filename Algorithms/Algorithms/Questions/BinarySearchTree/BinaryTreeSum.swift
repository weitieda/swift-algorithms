//
//  BinaryTreeSum.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-27.
//

import Foundation

/*
 
 Calculate the sum of all values in the tree
 
 */

final class BinaryTreeSum {

    // t: O(n), s: O(n)
    static func solution(_ root: BST<Int>) -> Int {
        return dfs(root)
    }

    private static func dfs(_ root: BST<Int>?) -> Int {
        guard let root = root else { return 0 }
        return dfs(root.left) + root.value + dfs(root.right)
    }

}
