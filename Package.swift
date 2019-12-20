// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "AppIcons",
    platforms: [
        .iOS("8.0")
    ],
    products: [
        .library(
            name: "AppIcons",
            targets: ["AppIcons"]
        )
    ],
    targets: [
        .target(
            name: "AppIcons",
            path: "AppIcons/Classes"
        )
    ]
)
