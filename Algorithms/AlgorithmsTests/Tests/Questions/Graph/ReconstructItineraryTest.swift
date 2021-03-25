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
        expect(["JFK", "MUC", "LHR", "SFO", "SJC"],
               when: [["MUC", "LHR"],
                      ["JFK", "MUC"],
                      ["SFO", "SJC"],
                      ["LHR", "SFO"]]
        )

        expect(["JFK", "ATL", "JFK", "SFO", "ATL", "SFO"],
               when: [["JFK", "SFO"],
                      ["JFK", "ATL"],
                      ["SFO", "ATL"],
                      ["ATL", "JFK"],
                      ["ATL", "SFO"]]
        )

        expect(["JFK", "NRT", "JFK", "KUL"],
               when: [["JFK", "KUL"],
                      ["JFK", "NRT"],
                      ["NRT", "JFK"]]
        )
    }

    private func expect(_ result: [String], when tickets: [[String]]) {
        let sut = ReconstructItinerary.solutionDFS(tickets)
        XCTAssertEqual(sut, result)

        let sut2 = ReconstructItinerary.solutionIterative(tickets)
        XCTAssertEqual(sut2, result)
    }
}
