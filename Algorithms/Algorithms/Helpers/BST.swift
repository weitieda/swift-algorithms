//
//  BST.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-04.
//

import Foundation

typealias BST = BinarySearchTree

final class BinarySearchTree<T: Comparable> {

    private(set) var value: T
    private(set) var left: BST<T>?
    private(set) var right: BST<T>?

    private(set) var parent: BST<T>?

    var min: BST<T> { left?.min ?? self }
    var max: BST<T> { right?.max ?? self }

    init(value: T) {
        self.value = value
    }

    convenience init?(array: [T]) {
        guard !array.isEmpty else { return nil }
        self.init(value: array[0])
        for i in 1..<array.count {
            insert(array[i])
        }
    }

    // Average: time: O(log(n)) | space: O(log(n))
    // Worst: time: O(n) | space: O(n)
    func insert(_ newValue: T) {
        if newValue < value {
            if let left = left {
                left.insert(newValue)
            } else {
                left = BST(value: newValue)
                left?.parent = self
            }
        } else if newValue > value {
            if let right = right {
                right.insert(newValue)
            } else {
                right = BST(value: newValue)
                right?.parent = self
            }
        }
    }

    // Average: time: O(log(n)) | space: O(log(n))
    // Worst: time: O(n) | space: O(n)
    func contains(_ value: T) -> Bool {
        return search(value) != nil
    }

    func search(_ target: T) -> BST<T>? {
        var node: BST<T>? = self

        while let n = node {
            if n.value == target {
                return n
            } else if n.value < target {
                node = n.right
            } else if n.value > target {
                node = n.left
            }
        }

        return nil
    }

    func searchRecursively(_ target: T) -> BST<T>? {
        if value == target {
            return self
        } else if value < target {
            return right?.search(target)
        } else if value > target {
            return left?.search(target)
        }
        return nil
    }

    /// There are 3 cases to consider:
    /// 1. Removing leaf node: remove directly, no need to "repair" the tree
    /// 2. Removing single chide node: remove then parent points to child
    /// 3. Removing node with 2 children: replace with next biggest value (right side, left most)
    ///    then remove next biggest then next biggest parent points to its right child
    func remove(_ value: T) -> BST<T> {

//        guard

        return self
    }

}
