// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "shell-hooks",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .executable(
            name: "shell-hooks-xpkg-hooks",
            targets: ["shell-hooks-xpkg-hooks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elegantchaos/XPkg", from:"2.0.0"),
    ],
    targets: [
        .target(
            name: "shell-hooks-xpkg-hooks",
            dependencies: ["XPkgAPI"]),
    ]
)
