@import CloudXVerveAdapter;
@import CloudXVerveAdapterPackage;
@import XCTest;

@interface CloudXVerveAdapterObjCTests : XCTestCase
@end

@implementation CloudXVerveAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXVerveAdapterVersion, @"3.9.0.1");
    XCTAssertNotNil(NSClassFromString(@"CLXVerveInitializer"));
}

@end
