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
            exact: "3.9.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXVerveAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-verve/releases/download/binary/3090001.0.0/CloudXVerveAdapter.xcframework.zip",
            checksum: "2de58712fac2ac7dc35b2fe49692b8a240cdcea7c82144125111b80286eb4aff"
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
