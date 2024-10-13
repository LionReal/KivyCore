
// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "KivyCore",
    platforms: [.iOS(.v13)],
    products: [
    	.library(
        	name: "KivyCore",
        	targets: [
        		"KivyCore"
        	]
    	),
    ],
    dependencies: [
		.package(url: "https://github.com/KivySwiftLink/PythonSwiftLink", .upToNextMajor(from: .init(311, 1, 0))),
    	.package(url: "https://github.com/KivySwiftLink/PythonCore", .upToNextMajor(from: "311.0.0")),
        //.package(name: "SDL2Core", path: "../sdl2"),
    	.package(url: "https://github.com/KivySwiftLink/SDL2Core", .upToNextMajor(from: "311.0.0")),
		.package(url: "https://github.com/PythonSwiftLink/SwiftonizePlugin", .upToNextMajor(from: .init(0, 0, 0)))

    ], targets: [
    	.target(
        	name: "KivyCore",
        	dependencies: [
				.product(name: "SwiftonizeModules", package: "PythonSwiftLink"),
        		.product(name: "PythonCore", package: "PythonCore"),
        		.product(name: "SDL2Core", package: "SDL2Core"),
        		"libkivy",
        	],
        	resources: [
        	],
        	linkerSettings: [
        		.linkedFramework("OpenGLES"),
        		.linkedFramework("Accelerate"),
        		.linkedFramework("CoreMedia"),
        		.linkedFramework("CoreVideo")

			],
			plugins: [
				.plugin(name: "Swiftonize", package: "SwiftonizePlugin"),
			]
    	),
            //.binaryTarget(name: "libkivy", path: "xcframework/libkivy.zip")
    	.binaryTarget(name: "libkivy", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.2/libkivy.zip", checksum: "5512d1c4c51fe1699bdb94b8448bc124624b5e0d81dfc9396eafc1ecc8a0a9eb"),
    ]

)
