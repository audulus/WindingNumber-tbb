// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "WindingNumber",
    platforms: [
        .macOS(.v11), .iOS(.v13)
    ],
    products: [
        .library(
            name: "WindingNumber",
            targets: ["WindingNumber"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Audulus/tbb-spm", branch: "main"),
    ],
    targets: [
        .target(name: "WindingNumber",
                dependencies: [.product(name: "tbb", package: "tbb-spm")],
                path: ".",
                sources: ["UT_SolidAngle.cpp", "UT_Array.cpp"],
                publicHeadersPath: "."),
    ],
    cxxLanguageStandard: .cxx20
)
