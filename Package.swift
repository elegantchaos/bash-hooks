// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "shell-hooks",
    products: [
        .executable(
            name: "shell-hooks-xpg",
            targets: ["shell-hooks-xpg"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "shell-hooks-xpg",
            dependencies: []),
    ]
)
