import XCTest
@testable import NamedEntityRecognition

final class SlotTest: XCTestCase {
    
    func testSlot() {
        let slot1 = Slot(slot: "B-depart_date.month_name")
        XCTAssertEqual(SlotType.B, slot1.getType())
        XCTAssertEqual("depart_date.month_name", slot1.getTag())
        XCTAssertEqual("B-depart_date.month_name", slot1.description())
        let slot2 = Slot(slot: "O")
        XCTAssertEqual(SlotType.O, slot2.getType())
        XCTAssertEqual("O", slot2.description())
        let slot3 = Slot(slot: "I-round_trip")
        XCTAssertEqual(SlotType.I, slot3.getType())
        XCTAssertEqual("round_trip", slot3.getTag())
        XCTAssertEqual("I-round_trip", slot3.description())
    }

    static var allTests = [
        ("testExample", testSlot),
    ]
}
