// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TorusSwiftDirectSDK",
    products: [
        .library(
            name: "TorusSwiftDirectSDK",
            targets: ["TorusSwiftDirectSDK"]),
    ],
    dependencies: [
        .package(name:"BestLogger", url: "https://github.com/rathishubham7/swift-logger", from: "0.0.1"),
        .package(name:"TorusUtils", url: "https://github.com/torusresearch/torus-utils-swift", from: "0.1.0"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", ._exactItem("1.4.0"))
    ],
    targets: [
        .target(
            name: "TorusSwiftDirectSDK",
            dependencies: ["TorusUtils", "BestLogger"],
            path: "Sources/TorusSwiftDirectSDK"),
        .testTarget(
            name: "TorusSwiftDirectSDKTests",
            dependencies: ["TorusSwiftDirectSDK"]),
    ]
)
