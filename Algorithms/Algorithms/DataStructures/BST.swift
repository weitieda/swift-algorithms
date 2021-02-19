//
//  BST.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-04.
//

import Foundation

class BinaryNode<T: Comparable> {
    var value: T
    var left: BinaryNode?
    var right: BinaryNode?


    var min: BinaryNode {
        left?.min ?? self
    }

    init(value: T, left: BinaryNode? = nil, right: BinaryNode? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}

final class BinarySearchTree<T: Comparable> {


    typealias Node = BinaryNode<T>

    private(set) var root: Node?

    init(rootValue: T? = nil) {
        if let value = rootValue {
            self.root = Node(value: value)
        }
    }

    func insert(_ value: T) {
        guard let root = root else {
            self.root = Node(value: value)
            return
        }
        insert(parent: root, newValue: value)
    }

    @discardableResult
    private func insert(parent: Node?, newValue: T) -> Node {
        guard let parent = parent else {
            return BinaryNode(value: newValue)
        }

        if parent.value > newValue {
            parent.left = insert(parent: parent.left, newValue: newValue)
        } else if parent.value < newValue {
            parent.right = insert(parent: parent.right, newValue: newValue)
        }

        return parent
    }

    func search(_ value: T) -> Node? {
        guard let root = root else { return nil }
        return search(parent: root, target: value)
    }

    private func search(parent: Node?, target: T) -> Node? {
        guard let parent = parent else { return nil }
        if target > parent.value {
            return search(parent: parent.right, target: target)
        } else if target < parent.value {
            return search(parent: parent.left, target: target)
        } else {
            return parent
        }
    }

    /// https://www.youtube.com/watch?v=wcIRPqTR3Kc
    ///
    /// There are 3 cases to consider:
    /// 1. Removing leaf node: remove directly, no need to "repair" the tree
    /// 2. Removing single chide node: remove then parent points to child
    /// 3. Removing node with 2 children: replace with next biggest value (right side, left most || left side, right most)
    /// then remove next biggest then next biggest parent points to its right child
    @discardableResult
    func remove(_ value: T) -> Bool {
        guard contains(value) else { return false }
        _ = remove(node: root, value: value)
        return true
    }

    func contains(_ value: T) -> Bool {
        search(value) != nil
    }

    private func remove(node: Node?, value: T) -> Node? {
        guard let node = node else {return nil}

        if value < node.value {
            node.left = remove(node: node.left, value: value)
        } else if value > node.value {
            node.right = remove(node: node.right, value: value)
        } else {
//            if node.left == nil && node.right == nil {
//                return nil
//            }
            if node.left == nil {
                return node.right
            } else if node.right == nil {
                return node.left
            } else {
                node.value = node.right!.min.value
                node.right = remove(node: node.right, value: value)
            }
        }

        return node
    }
}
