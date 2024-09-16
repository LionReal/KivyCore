
// swift-tools-version: 5.8

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
    	.package(url: "https://github.com/KivySwiftLink/PythonCore", .upToNextMajor(from: "311.0.0"))
    ], 
    targets: [
    	.target(
        	name: "KivyCore", 
        	dependencies: [
        		.product(name: "PythonCore", package: "PythonCore"), 
        		"libios", 
        		"libpng16", 
        		"libkivy", 
        		"libpyobjus", 
        		"libSDL2_mixer", 
        		"libSDL2_ttf", 
        		"libSDL2_image", 
        		"libSDL2", 
        	], 
        	resources: [
        	], 
        	linkerSettings: [
        		.linkedFramework("OpenGLES"), 
        		.linkedFramework("Metal"), 
        		.linkedFramework("AVFoundation"), 
        		.linkedFramework("ImageIO"), 
        		.linkedFramework("CoreHaptics"), 
        		.linkedFramework("MobileCoreServices"), 
        		.linkedFramework("MessageUI"), 
        		.linkedFramework("WebKit"), 
        		.linkedFramework("Accelerate"), 
        		.linkedFramework("CoreGraphics"), 
        		.linkedFramework("CoreVideo"), 
        		.linkedFramework("CoreAudio"), 
        		.linkedFramework("AudioToolbox"), 
        		.linkedFramework("GameController"), 
        		.linkedFramework("Photos"), 
        		.linkedFramework("UIKit"), 
        		.linkedFramework("QuartzCore"), 
        		.linkedFramework("CoreMotion"), 
        		.linkedFramework("CoreMedia"), 
        	]
    	), 
    	.binaryTarget(name: "libios", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.3/libios.zip", checksum: "288c64dd79440a37b4597352d43d3dacbb70433ef11d83b9305f41a2a2b948e5"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.3/libpng16.zip", checksum: "85ae78059074fb54f8bd4c47dbb781247ef7cd2267c7bbd5cd6b1503c04ae656"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.3/libkivy.zip", checksum: "1f12d668a9470da7c7c2182a63bf0eb210432b526561afbda49b358000006803"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.3/libpyobjus.zip", checksum: "4e84bf775429b517b0e1bd2eb62cc6c29ce067309ef5f6f5d1c6c6d0bd2c2317"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.3/libSDL2_mixer.zip", checksum: "16896f2557570d307961e8c66ef96e204aa442cd9292e1f1833da6b41693b3c1"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.3/libSDL2_ttf.zip", checksum: "5bffa66c68a5912ab4ba1758a71fac2af5b54d8e0dee2f34906735fbf51c9add"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.3/libSDL2_image.zip", checksum: "8eecbf6bc6fc74c9b4b4ceb4ec4dedf8dc2156fb48c05108495309b43a3f37d2"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.3/libSDL2.zip", checksum: "2b27db2c746e3684056c76418ad37f7688af6eb47fe7ad4b005d8dcc8bbf6ca7"), 
    ]
)