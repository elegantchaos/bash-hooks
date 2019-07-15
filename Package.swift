// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "shell-hooks",
    products: [
        .executable(
            name: "shell-hooks-xpkg-hooks",
            targets: ["shell-hooks-xpkg-hooks"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "shell-hooks-xpkg-hooks",
            dependencies: []),
    ]
)
