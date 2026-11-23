// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-temperature",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Temperature", targets: ["Temperature"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-atoms/swift-quantity.git", branch: "main")
    ],
    targets: [
        .target(
            name: "Temperature",
            dependencies: [
                .product(name: "Quantity", package: "swift-quantity")
            ]
        ),
        .testTarget(
            name: "Temperature Tests",
            dependencies: [
                .target(name: "Temperature")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
            .enableExperimentalFeature("Lifetimes"),
            .treatAllWarnings(as: .error),
        ]
}
