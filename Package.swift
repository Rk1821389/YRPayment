//
//  Package.swift
//  YRPayment
//
//  Created by Rahul on 17/07/25.
//  Copyright © 2025 Yassir RAMDANI. All rights reserved.
//
// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "YRPayment",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "YRPayment",
            targets: ["YRPayment"]
        ),
    ],
    targets: [
        .target(
            name: "YRPayment",
            path: "YRPayment",
            exclude: ["Info.plist", "Resources/OCRAStd/README.md"],
            resources: [
                .process("Resources/OCRAStd")
            ]
        ),
        .testTarget(
            name: "YRPaymentTests",
            dependencies: ["YRPayment"],
            path: "Tests"
        )
    ]
)
