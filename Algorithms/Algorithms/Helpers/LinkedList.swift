//
//  LinkedList.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-06.
//

import Foundation

final class LinkedList<T: Comparable> {

    typealias Node = LinkedListNode<T>

    class LinkedListNode<T> {
        var value: T
        var next: LinkedListNode?

        init(value: T, next: LinkedListNode? = nil) {
            self.value = value
            self.next = next
        }
    }

    private(set) var head: Node?

    var last: Node? {
        guard var node = head else { return nil }
        while let next = node.next {
            node = next
        }
        return node
    }

    convenience init(array: [T]) {
        self.init()

        array.forEach { append($0) }
    }

    func append(_ value: T) {
        append(.init(value: value))
    }

    func append(_ node: Node) {
        let newNode = node
        if let lastNode = last {
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var s = "["
        var node = head
        while let nd = node {
            s += "\(nd.value)"
            node = nd.next
            if node != nil { s += ", " }
        }
        return s + "]"
    }
}
