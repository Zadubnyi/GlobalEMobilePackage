// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GlobalEMobileSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "GlobalEMobileSDK",
            targets: ["GlobalEMobileSDK"]),
    ],
    dependencies: [
         .package(
            url: "https://github.com/Adyen/adyen-ios",
            from: "3.8.5"
         ),
         .package(
            name: "Braintree",
            url: "https://github.com/braintree/braintree_ios",
            branch: "master"
         ),
    ],
    targets: [
        .binaryTarget(
            name: "GlobalEMobileSDK",
            url: "https://oneclickbackend.s3.eu-central-1.amazonaws.com/GlobalEMobileSDK.xcframework.zip",
            checksum: "22bab6a0fdf60740b6e269281063840b8839802e85fc0bc015bf5425d4f59756")
    ]
)
