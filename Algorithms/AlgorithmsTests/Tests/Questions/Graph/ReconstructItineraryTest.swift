//
//  ReconstructItineraryTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-03-22.
//

import XCTest
@testable import Algorithms

class ReconstructItineraryTest: XCTestCase {

    func test1() {
        let tickets1 = [["MUC", "LHR"], ["JFK", "MUC"], ["SFO", "SJC"], ["LHR", "SFO"]]
        expect(tickets1, when: ["JFK", "MUC", "LHR", "SFO", "SJC"])

        let tickets2 = [["JFK", "SFO"], ["JFK", "ATL"], ["SFO", "ATL"], ["ATL", "JFK"], ["ATL", "SFO"]]
        expect(tickets2, when: ["JFK", "ATL", "JFK", "SFO", "ATL", "SFO"])
    }

    private func expect(_ tickets: [[String]], when result: [String]) {
        let sut = ReconstructItinerary.solutionDFS(tickets)
        XCTAssertEqual(sut, result)
        
        let sut2 = ReconstructItinerary.solutionIterative(tickets)
        XCTAssertEqual(sut2, result)
    }
}
