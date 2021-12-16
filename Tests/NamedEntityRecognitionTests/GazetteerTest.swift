import XCTest
@testable import NamedEntityRecognition

final class GazetteerTest: XCTestCase {
    func testContains() {
        let gazetteer = Gazetteer(name: "location", fileName: "gazetteer-location")
        XCTAssertTrue(gazetteer.contains(word: "bağdat"))
        XCTAssertTrue(gazetteer.contains(word: "BAĞDAT"))
        XCTAssertTrue(gazetteer.contains(word: "belçika"))
        XCTAssertTrue(gazetteer.contains(word: "BELÇİKA"))
        XCTAssertTrue(gazetteer.contains(word: "körfez"))
        XCTAssertTrue(gazetteer.contains(word: "KÖRFEZ"))
        XCTAssertTrue(gazetteer.contains(word: "küba"))
        XCTAssertTrue(gazetteer.contains(word: "KÜBA"))
        XCTAssertTrue(gazetteer.contains(word: "varşova"))
        XCTAssertTrue(gazetteer.contains(word: "VARŞOVA"))
        XCTAssertTrue(gazetteer.contains(word: "krallık"))
        XCTAssertTrue(gazetteer.contains(word: "KRALLIK"))
        XCTAssertTrue(gazetteer.contains(word: "berlin"))
        XCTAssertTrue(gazetteer.contains(word: "BERLİN"))
    }

    static var allTests = [
        ("testExample", testContains),
    ]
}
