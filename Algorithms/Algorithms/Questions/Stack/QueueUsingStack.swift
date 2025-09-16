//
//  QueueUsingStack.swift
//  Algorithms
//
//  Created by Tieda Wei on 2025-09-15.
//

import Foundation

public class QueueUsingStack {
    private var stack1 = [Int]()

    public init() {}

    public func enqueue(_ element: Int) {
        stack1.append(element)
    }

    public func dequeue() -> Int? {
        stack1.removeLast()
    }

    public func peek() -> Int? {
        stack1.first
    }
}
