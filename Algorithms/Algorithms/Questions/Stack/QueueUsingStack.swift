//
//  QueueUsingStack.swift
//  Algorithms
//
//  Created by Tieda Wei on 2025-09-15.
//

public class QueueUsingStack {
    final class Stack<T> {
        private var elements = [T]()

        func push(_ element: T) {
            elements.append(element)
        }

        @discardableResult
        func pop() -> T? {
            elements.popLast()
        }

        func peek() -> T? {
            elements.last
        }
    }

    private var enqueueStack = Stack<Int>()
    private var dequeueStack = Stack<Int>()

    public init() {}

    // adds x to the end of the queue.
    public func enqueue(_ element: Int) {
        enqueueStack.push(element)
    }

    // removes and returns the element from the front of the queue
    public func dequeue() -> Int? {
        transformToDequeueStack()
        return dequeueStack.pop()
    }

    // returns the front element of the queue
    public func peek() -> Int? {
        nil
    }

    private func transformToDequeueStack() {
        while let element = enqueueStack.pop() {
            dequeueStack.push(element)
        }
    }
}
