// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "extensions",
    platforms: [ .iOS(.v10), .tvOS(.v9), .watchOS(.v2), .macOS(.v10_10) ],
    products: [ .library(name: "extensions", targets: ["extensions"]) ],
    dependencies: [],
    targets: [ .target(name: "extensions", dependencies: []) ]
)
