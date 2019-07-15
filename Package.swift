// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "shell-hooks",
    products: [
        .executable(
            name: "shell-hooks-xpkg",
            targets: ["shell-hooks-xpkg"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "shell-hooks-xpkg",
            dependencies: []),
    ]
)
