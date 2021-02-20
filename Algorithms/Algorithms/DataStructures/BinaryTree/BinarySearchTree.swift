//
//  BinarySearchTree.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-04.
//

import Foundation

final class BinarySearchTree<T: Comparable> {

    typealias Node = BinaryNode<T>

    private(set) var root: Node?

    init(rootValue: T? = nil) {
        guard let value = rootValue else { return }
        self.root = Node(value: value)
    }

    convenience init(array: [T]) {
        self.init(rootValue: array.first)
        for item in array.dropFirst() {
            insert(item)
        }
    }

    @discardableResult
    func insert(_ value: T) -> Bool {
        guard !contains(value) else { return false }
        guard let root = root else {
            self.root = Node(value: value)
            return true
        }
        insert(parent: root, newValue: value)
        return true
    }

    func search(_ value: T) -> Node? {
        guard let root = root else { return nil }
        return search(parent: root, target: value)
    }

    func contains(_ value: T) -> Bool {
        search(value) != nil
    }

    /// https://www.youtube.com/watch?v=wcIRPqTR3Kc
    /// https://www.youtube.com/watch?v=8K7EO7s_iFE&t=0s
    ///
    /// There are 3 cases to consider:
    /// 1. Removing leaf node: remove directly, no need to "repair" the tree
    /// 2. Removing single chide node: remove then parent points to child
    /// 3. Removing node with 2 children: replace with next biggest value (right side, left most || left side, right most)
    /// then remove next biggest then next biggest parent points to its right child
    @discardableResult
    func remove(_ value: T) -> Bool {
        guard contains(value) else { return false }
        remove(node: root, value: value)
        return true
    }

    // MARK: - Private

    @discardableResult
    private func insert(parent: Node?, newValue: T) -> Node {
        guard let parent = parent else { return BinaryNode(value: newValue) }

        if parent.value > newValue {
            parent.left = insert(parent: parent.left, newValue: newValue)
        } else if parent.value < newValue {
            parent.right = insert(parent: parent.right, newValue: newValue)
        }

        return parent
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

    @discardableResult
    private func remove(node: Node?, value: T) -> Node? {
        guard let node = node else {return nil}

        if value < node.value {
            node.left = remove(node: node.left, value: value)
        } else if value > node.value {
            node.right = remove(node: node.right, value: value)
        } else {
            if node.left == nil {
                return node.right
            } else if node.right == nil {
                return node.left
            } else {
                node.value = node.right!.min.value
                node.right = remove(node: node.right, value: node.value)
            }
        }

        return node
    }
}

extension BinarySearchTree: CustomStringConvertible {
    public var description: String {
        guard let root = root else { return "empty tree" }
        return String(describing: root)
    }
}
