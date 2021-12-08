// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "ErrorMessage",
    products: [
        .library(
            name: "ErrorMessage",
            targets: ["ErrorMessage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/FoundationTestToolkit",
            from: "0.1.0"
        ),
    ],
    targets: [
        .target(
            name: "ErrorMessage",
            dependencies: []
        ),
        .target(
            name: "ErrorMessageTestToolkit",
            dependencies: ["ErrorMessage", "FoundationTestToolkit"]
        ),
        .testTarget(
            name: "ErrorMessage-tests",
            dependencies: ["ErrorMessageTestToolkit"]
        ),
        .testTarget(
            name: "ErrorMessageTestToolkit-tests",
            dependencies: ["ErrorMessageTestToolkit"]
        ),
    ]
)
