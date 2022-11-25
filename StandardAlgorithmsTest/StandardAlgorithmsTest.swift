//
//  StandardAlgorithmsTest.swift
//  StandardAlgorithmsTest
//
//  Created by Akbar, Abdullah (RCH) on 25/11/2022.
//

import XCTest

class StandardAlgorithmsTest: XCTestCase {
    func testofMergeSortwithunsortedArray() {
        let unsortedArray = [1,4,5,2,3,7]
        let expected = [1,2,3,4,5,7]
        let sorting = SortingAndSearching()
        let returnvalue = sorting.mergeSort(data: unsortedArray)
        XCTAssertEqual(returnvalue, expected)
    }
    
}
