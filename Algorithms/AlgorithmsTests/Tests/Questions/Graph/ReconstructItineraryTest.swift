//
//  ReconstructItineraryTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-03-22.
//

import XCTest
@testable import Algorithms

class ReconstructItineraryTest: XCTestCase {

    func test() {
        [
            (["JFK", "MUC", "LHR", "SFO", "SJC"],
             [
                ["MUC", "LHR"],
                ["JFK", "MUC"],
                ["SFO", "SJC"],
                ["LHR", "SFO"]
             ]),
            
            (["JFK", "ATL", "JFK", "SFO", "ATL", "SFO"],
             [
                ["JFK", "SFO"],
                ["JFK", "ATL"],
                ["SFO", "ATL"],
                ["ATL", "JFK"],
                ["ATL", "SFO"]
             ]),
            
            (["JFK", "NRT", "JFK", "KUL"],
             [
                ["JFK", "KUL"],
                ["JFK", "NRT"],
                ["NRT", "JFK"]
             ])
        ].forEach { (result, tickets) in
            expect(result, when: ReconstructItinerary.solutionDFS(tickets))
            expect(result, when: ReconstructItinerary.solutionIterative(tickets))
        }
    }
}
