// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "ThemeKit",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "ThemeKit",
                    targets: ["ThemeKit"]),
        ],
        dependencies: [
            .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.0")),
            .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "7.6.2")),
            .package(url: "https://github.com/curdicu/UIExtensions.git", .branch( "main")),
            .package(url: "https://github.com/curdicu/HsExtensions.git", .branch( "main")),
        ],
        targets: [
            .target(
                    name: "ThemeKit",
                    dependencies: [
                        "Alamofire",
                        "Kingfisher",
                        .product(name: "UIExtensions", package: "UIExtensions"),
                        .product(name: "HsExtensions", package: "HsExtensions"),
                    ]
            ),
        ]
)
