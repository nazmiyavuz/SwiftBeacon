// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftBeacon",
    platforms: [
      .macOS(.v12), .iOS(.v12)
    ],
    products: [
        .library(
            name: "SwiftBeacon",
            targets: ["SwiftBeacon"])
    ],
    targets: [
        .target(
            name: "SwiftBeacon",
            path: "SwiftBeacon/Classes")
    ]
)
