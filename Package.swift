// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GlobalEMobileSDK",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GlobalEMobileSDK",
            targets: ["GlobalEMobileSDK"]),
    ],
    dependencies: [
         .package(url: "https://github.com/Adyen/adyen-ios", from: "3.8.5"),
         .package(name: "Braintree", url: "https://github.com/braintree/braintree_ios", branch: "master"),
    ],
    targets: [
        .binaryTarget(name: "GlobalEMobileSDK",
                      url: "https://github.com/Zadubnyi/GlobalEMobileSDK/blob/main/GlobalEMobileSDK.xcframework.zip",
                      checksum: "68675d9d5d2797fd9a0bb5d3291f9daf26eb30915c60c09b846af9b9008d4252")
    ]
)
