// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "KivyCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "KivyCore", targets: ["KivyCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/KivySwiftLink/SDL2Core", .upToNextMajor("311.0.0")),
        .package(url: "https://github.com/KivySwiftLink/PythonSwiftLink", .upToNextMajor("311.1.0")),
        .package(url: "https://github.com/KivySwiftLink/PythonCore", .upToNextMajor("311.0.0"))
    ],
    targets: [
        .target(
            name: "KivyCore",
            dependencies: [
        		.product(name: "SDL2Core", package: "SDL2Core"),
        		"libkivy"
        	],
            resources: [
        	],
            linkerSettings: [
        		.linkedFramework("OpenGLES"),
        		.linkedFramework("Accelerate"),
        		.linkedFramework("CoreMedia"),
        		.linkedFramework("CoreVideo")
        	]
        ),
        .binaryTarget(
            name: "libkivy",
            url: "https://github.com/kivyswiftlink/KivyCore/releases/download/311.0.5/libkivy.zip",
            checksum: "f59eb797c7c991ad7ff263dfdeba3994f1c7da4040ed9fa2352bff78f4524067"
        )
    ]
)

