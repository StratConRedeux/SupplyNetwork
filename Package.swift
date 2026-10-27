// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "SupplyNetwork",
    // TODO: Set the minimum iOS version once the Apple Intelligence requirement is confirmed.
    // platforms: [.iOS(.v_TODO)],
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
