import XCTest
@testable import extensions

final class extensionsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(extensions().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
