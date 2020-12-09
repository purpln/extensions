// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "extensions",
    platforms: [
        .iOS(.v10),
        .tvOS(.v9),
        .watchOS(.v2),
        .macOS(.v10_10)
    ],
    products: [
        .library(name: "extensions", targets: ["extensions"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "extensions", dependencies: []),
        .testTarget(name: "extensionsTests", dependencies: ["extensions"]),
    ]
)
