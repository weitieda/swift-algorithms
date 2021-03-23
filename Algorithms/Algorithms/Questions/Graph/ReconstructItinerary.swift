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

final class ReconstructItinerary {
    
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
        path.reverse() // Imporve by using LinkedList to avoid reverse()
        
        return path
    }
    
    static func solutionIterative(_ tickets: [[String]]) -> [String] {
        var graph = sortDestination(buildGraph(tickets))
        
        var path = [String]()
        var stack = ["JFK"]
        
        while !stack.isEmpty {
            let last = stack.removeLast()
            while graph.keys.contains(last) && !graph[last]!.isEmpty {
                stack.append(graph[last]!.removeLast())
            }
            path.append(last)
        }
        return path
    }

    static private func buildGraph(_ tickets: [[String]]) -> Graph {
        var graph = Graph()
        for t in tickets {
            let dep = t[0], dest = t[1]
            graph[dep, default: []].append(dest)
        }
        return graph
    }
    
    static private func sortDestination(_ graph: Graph) -> Graph {
        var graph = graph
        for (k, v) in graph {
            graph[k] = v.sorted(by: <)
        }
        return graph
    }
}
