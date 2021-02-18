//
//  BST.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-04.
//

import Foundation

final class BinarySearchTree<T: Comparable> {

    private(set) var root: Node

    class Node {
        var value: T
        var left: Node?
        var right: Node?

        init(value: T, left: Node? = nil, right: Node? = nil) {
            self.value = value
            self.left = left
            self.right = right
        }
    }

    init(rootValue: T) {
        self.root = .init(value: rootValue)
    }

    func add(_ value: T) {
        let newNode = Node(value: value)
        add(parent: root, new: newNode)
    }

    private func add(parent: Node, new: Node) {
        if parent.value > new.value {
            if let left = parent.left {
                add(parent: left, new: new)
            } else {
                parent.left = new
            }
        } else if parent.value < new.value {
            if let right = parent.right {
                add(parent: right, new: new)
            } else {
                parent.right = new
            }
        }
    }

    func search(_ value: T) -> Node? {
        let t = Node(value: value)
        if value > root.value {
            search(parent: root.right, target: t)
        } else if value < root.value {
            search(parent: root.left, target: t)
        } else {
            return root
        }

        return nil
    }

    private func search(parent: Node?, target: Node) {

    }



    /// https://www.youtube.com/watch?v=wcIRPqTR3Kc
    ///
    /// There are 3 cases to consider:
    /// 1. Removing leaf node: remove directly, no need to "repair" the tree
    /// 2. Removing single chide node: remove then parent points to child
    /// 3. Removing node with 2 children: replace with next biggest value (right side, left most || left side, right most)
    /// then remove next biggest then next biggest parent points to its right child
    @discardableResult
    func remove() -> Int {
        return 0
    }

}
