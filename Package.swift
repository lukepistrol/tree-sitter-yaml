// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TreeSitterYAML",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterYAML", targets: ["TreeSitterYAML"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterYAML",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "corpus",
                    "grammar.js",
                    "LICENSE",
                    "package.json",
                    "README.md",
                    "scripts",
                    "yaml-test-suite",
                ],
                sources: [
                    "src/parser.c",
                    "src/scanner.cc",
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
