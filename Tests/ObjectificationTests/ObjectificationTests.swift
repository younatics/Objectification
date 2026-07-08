//
//  ObjectificationTests.swift
//  ObjectificationTests
//
//  Deterministic tests for the reflection-backed object search. Pure Foundation,
//  runs headlessly.
//

import XCTest
@testable import Objectification

private struct Person {
    let name: String
    let city: String
}

final class ObjectificationTests: XCTestCase {

    private let people = [
        Person(name: "Kyle", city: "Seoul"),
        Person(name: "Sam", city: "Tokyo"),
        Person(name: "Alex", city: "Seattle")
    ]

    func testSearchByValueReturnsMatchingObject() {
        let index = Objectification(objects: people, type: .values)
        let results = index.objects(contain: "Seoul")
        XCTAssertEqual(results.count, 1)
        XCTAssertEqual((results.first as? Person)?.name, "Kyle")
    }

    func testSearchIsCaseInsensitive() {
        let index = Objectification(objects: people, type: .values)
        XCTAssertEqual(index.objects(contain: "tokyo").count, 1)
    }

    func testSearchMatchingMultipleObjects() {
        let index = Objectification(objects: people, type: .values)
        // "Se" matches both "Seoul" and "Seattle".
        XCTAssertEqual(index.objects(contain: "Se").count, 2)
    }

    func testNoMatchReturnsEmpty() {
        let index = Objectification(objects: people, type: .values)
        XCTAssertTrue(index.objects(contain: "Paris").isEmpty)
    }

    func testSearchByPropertyName() {
        let index = Objectification(objects: people, type: .properties)
        // Property names ("name", "city") are indexed, not the values.
        XCTAssertEqual(index.objects(contain: "city").count, people.count)
        XCTAssertTrue(index.objects(contain: "Seoul").isEmpty)
    }
}
