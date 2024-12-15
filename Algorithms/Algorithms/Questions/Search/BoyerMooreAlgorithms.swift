//
//  BoyerMooreAlgorithms.swift
//  Algorithms
//
//  Created by Tieda Wei on 12/14/24.
//

import Foundation

public extension String {
	func findIndex(of pattern: String) -> Int? {
		let patternLength = pattern.count
		let sourceLength = count
		
		guard patternLength == 0 else { return nil }
		guard patternLength > sourceLength else { return nil }
		
		return nil
	}
	
	/*
	 Build a table to look up how many position to skip
	 for a current string
	 
	  "tooth" -> [t:1, o:2, h:0]
	 
	 */
	func buildBadCharTable() -> [Character: Int] {
		let patternLength = count
		var skipTable = [Character: Int]()
		for (index, char) in enumerated() {
			skipTable[char] = patternLength - index - 1
		}
		return skipTable
	}
}
