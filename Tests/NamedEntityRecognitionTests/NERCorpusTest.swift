import XCTest
import DataStructure
@testable import NamedEntityRecognition

final class NERCorpusTest: XCTestCase {
    
    func testNERCorpus() {
        let counter = CounterHashMap<NamedEntityType>()
        let nerCorpus = NERCorpus(fileName: "nerdata.txt")
        XCTAssertEqual(27556, nerCorpus.sentenceCount())
        XCTAssertEqual(492233, nerCorpus.numberOfWords())
        for i in 0..<nerCorpus.sentenceCount(){
            let namedEntitySentence = nerCorpus.getSentence(index: i)
            for j in 0..<namedEntitySentence.wordCount(){
                let namedEntityWord = namedEntitySentence.getWord(index: j)
                counter.put(key: (namedEntityWord as! NamedEntityWord).getNamedEntityType())
            }
        }
        XCTAssertEqual(438976, counter.count(key: NamedEntityType.NONE))
        XCTAssertEqual(23878, counter.count(key: NamedEntityType.PERSON))
        XCTAssertEqual(16931, counter.count(key: NamedEntityType.ORGANIZATION))
        XCTAssertEqual(12448, counter.count(key: NamedEntityType.LOCATION))
    }

    static var allTests = [
        ("testExample", testNERCorpus),
    ]
}
