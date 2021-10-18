// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SlidingRuler",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SlidingRuler", targets: ["SlidingRuler"]),
    ],
    targets: [
        .target(name: "SlidingRuler", path: "Sources")
    ]
)
