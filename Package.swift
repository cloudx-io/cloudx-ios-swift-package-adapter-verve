// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXVerveAdapter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXVerveAdapter",
            targets: ["CloudXVerveAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/vervegroup/hybid-ios-spm-sdk.git",
            exact: "3.9.3"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXVerveAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-verve/releases/download/binary/3090300.0.0/CloudXVerveAdapter.xcframework.zip",
            checksum: "8b572668ffebcf6da6c2fd5773117022b4d7a8f14cade242c13b8a9157d4cb2c"
        ),
        .target(
            name: "CloudXVerveAdapterPackage",
            dependencies: [
                "CloudXVerveAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "HyBid", package: "hybid-ios-spm-sdk"),
            ]
        ),
        .testTarget(
            name: "CloudXVerveAdapterSwiftTests",
            dependencies: ["CloudXVerveAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXVerveAdapterObjCTests",
            dependencies: ["CloudXVerveAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
