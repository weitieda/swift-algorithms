//
//  ReconstructItinerary.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-03-22.
//

import Foundation

/*

 Leetcode 332

 https://leetcode.com/problems/reconstruct-itinerary/

 */

enum ReconstructItinerary {
    typealias Departure = String
    typealias Destinations = [String]
    typealias Graph = [Departure: Destinations]

    // t: O(), s: O() todo
    static func solutionDFS(_ tickets: [[String]]) -> [String] {
        var graph = sortDestination(buildGraph(tickets))

        func dfs(_ departure: Departure) {
            if graph[departure] == nil { // key not in graph means reach end
                path.append(departure)
                return
            }
            while !graph[departure, default: []].isEmpty {
                let next = graph[departure]!.removeFirst() // Reverse dest sort order to removeLast() for O(1) performance
                dfs(next)
            }
            path.append(departure)
        }

        var path = [String]()
        dfs("JFK")
        path.reverse() // Could imporve by using LinkedList to avoid reverse()

        return path
    }

    static func solutionIterative(_ tickets: [[String]]) -> [String] {
        var graph = sortDestination(buildGraph(tickets))
        var path = [String]()
        var stack = ["JFK"]

        while !stack.isEmpty, let lastAirport = stack.last {
            // no ticket depture from `lastAirport` OR all tickets have been used
            if graph[lastAirport] == nil || graph[lastAirport]!.isEmpty {
                path.append(lastAirport)
                stack.removeLast()
            } else { // still have tickets not used yet
                let first = graph[lastAirport]!.removeFirst()
                stack.append(first)
            }
        }

        return path.reversed()
    }

    private static func buildGraph(_ tickets: [[String]]) -> Graph {
        var graph = Graph()
        for t in tickets {
            let from = t[0], to = t[1]
            graph[from, default: []].append(to)
        }
        return graph
    }

    private static func sortDestination(_ graph: Graph) -> Graph {
        var graph = graph
        for (k, v) in graph {
            graph[k] = v.sorted(by: <)
        }
        return graph
    }
}
