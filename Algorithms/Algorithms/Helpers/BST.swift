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
        } else {
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
        if value < self.value {
            return left?.contains(value) ?? false
        } else if value > self.value {
            return right?.contains(value) ?? false
        }
        return true
    }

}
