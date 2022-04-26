// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NamedEntityRecognition",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "NamedEntityRecognition",
            targets: ["NamedEntityRecognition"]),
    ],
    dependencies: [
        .package(name: "Corpus", url: "https://github.com/StarlangSoftware/Corpus-Swift.git", .exact("1.0.15")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "NamedEntityRecognition",
            dependencies: ["Corpus"],
            resources: [.process("gazetteer-location.txt"),.process("gazetteer-organization.txt"),.process("gazetteer-person.txt"),.process("nerdata.txt")]),
        .testTarget(
            name: "NamedEntityRecognitionTests",
            dependencies: ["NamedEntityRecognition"]),
    ]
)
