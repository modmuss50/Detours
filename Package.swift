// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Detours",
    products: [
        .library(name: "Detours", targets: ["Detours"])
    ],
    targets: [
        .target(
            name: "Detours",
            path: "src",
            exclude: ["uimports.cpp"],
            publicHeadersPath: ".",
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
    ],
    cxxLanguageStandard: .cxx17
)