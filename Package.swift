// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "Objectification",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "Objectification", targets: ["Objectification"])
    ],
    targets: [
        .target(
            name: "Objectification",
            path: "Objectification",
            exclude: [
                "Objectification.h",
                "Info.plist"
            ],
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "ObjectificationTests",
            dependencies: ["Objectification"],
            path: "Tests/ObjectificationTests",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        )
    ]
)
