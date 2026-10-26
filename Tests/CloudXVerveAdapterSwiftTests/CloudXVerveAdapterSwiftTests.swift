import CloudXVerveAdapter
import CloudXVerveAdapterPackage
import XCTest

final class CloudXVerveAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXVerveAdapterVersion, "3.9.3.0")
        XCTAssertNotNil(NSClassFromString("CLXVerveInitializer"))
    }
}
