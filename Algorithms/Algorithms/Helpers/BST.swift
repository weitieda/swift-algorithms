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

    var minValue: T { left?.minValue ?? value }
    var maxValue: T { right?.maxValue ?? value }

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

//    func remove(_ value: T) -> BST<T> {
//
//        guard
//
//        return self
//    }

}
