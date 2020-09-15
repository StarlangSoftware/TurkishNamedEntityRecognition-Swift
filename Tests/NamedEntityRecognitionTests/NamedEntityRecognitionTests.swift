import XCTest
@testable import NamedEntityRecognition

final class NamedEntityRecognitionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(NamedEntityRecognition().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
