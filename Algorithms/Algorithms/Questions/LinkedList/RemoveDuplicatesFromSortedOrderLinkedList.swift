//
//  RemoveDuplicatesFromSortedOrderLinkedList.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-02-06.
//

import DataStructure

/*

 You're given the head of a Singly Linked List whose nodes are in sorted order with respect to their values.
 Write a function that returns a modified version of the Linked List that doesn't contain
 any nodes with duplicate values.
 The Linked List should be modified in place (i.e., you shouldn't create a brand new list),
 and the modified Linked List should still have its nodes sorted with respect to their values.

 Each `LinkedList` node has integer `value` as well as a `next` node
 pointing to the next node in the list or to `None`/`Null` if it's the tail of the list.

 e.g.
 input = 1 -> 1 -> 3 -> 4 -> 4 -> 4 -> 5 -> 6 -> 6
 output = 1 -> 3 -> 4 -> 5 -> 6

 */

enum RemoveDuplicatesFromSortedOrderLinkedList {
    // t: O(n), s: O(1)
    static func solution(list: LinkedList<Int>) -> LinkedList<Int> {
        let cpList = list
        var node = cpList.first

        while node?.next != nil {
            while node?.value == node?.next?.value {
                node?.next = node?.next?.next
            }
            node = node?.next
        }

        return cpList
    }
}
