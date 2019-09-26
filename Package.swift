// swift-tools-version:5.1
//  Package.swift
//  FlickerServices
//
//  Created by Shivam Dhingra on 9/27/19.
//  Copyright © 2019 Shivam Dhingra. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "FlickerServices",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "FlickerServices",
            targets: ["FlickerServices"]),
    ],
    dependencies: [
        .package(url: "https://github.com/shivamdhingra33/PhotoModel.git", .upToNextMajor(from: "1.0.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "FlickerServices",
            path: "FlickerServices")
    ]
)
