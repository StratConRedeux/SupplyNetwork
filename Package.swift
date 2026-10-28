// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "SupplyNetwork",
    // iOS 27 is the minimum, for Apple Intelligence. The string form works with tools version 6.2.
    platforms: [.iOS("27.0")],
    products: [
        .library(name: "SupplyNetwork", targets: ["SupplyNetwork"]),
    ],
    targets: [
        .target(
            name: "SupplyNetwork",
            swiftSettings: [.enableUpcomingFeature("ApproachableConcurrency")]
        ),
        .testTarget(
            name: "SupplyNetworkTests",
            dependencies: ["SupplyNetwork"],
            swiftSettings: [.enableUpcomingFeature("ApproachableConcurrency")]
        ),
    ]
)
