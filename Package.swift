// swift-tools-version: 5.1
import PackageDescription

let package = Package(
    name: "CapacitorCommunityBluetoothLe",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CapacitorCommunityBluetoothLe",
            targets: ["CapacitorCommunityBluetoothLe"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "CapacitorCommunityBluetoothLe",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm")
            ],
            path: "ios/Plugin",
            sources: ["*.swift"],
            publicHeadersPath: "."
        )
    ],
    swiftLanguageVersions: [.v5]
)
