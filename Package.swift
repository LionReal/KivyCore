
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
    	.binaryTarget(name: "libios", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libios.zip", checksum: "c75054d57d3f4df32de5d19b64e7fcfee015f24cb535172c769b20c0b03ba493"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libpng16.zip", checksum: "456931dc135b9b342398723f7f50517e0f981825d73a50f4f69c357cbbb347fa"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libkivy.zip", checksum: "a2539d93416e7b2b0148d4db12c171ea2285b31f4fa794277689dc383a62b2b8"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libpyobjus.zip", checksum: "a947b0faadd7af7a8523ad475172db4b8a9ba790d7a9cc9823d919143ee3e5a6"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libSDL2_mixer.zip", checksum: "cc5b45f6c0779ed41330b21f11c06a6eb7426e1a3c5ae94c7b8489a767b3c034"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libSDL2_ttf.zip", checksum: "b717b1b1b3551a855ce8beeb834b6e1ce656a74ade65ef871f85de9852181f1d"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libSDL2_image.zip", checksum: "4eb82e5d926f9ee8c29f474211b28a9cf1e78dbbf86a82eea3e36b923d6dd13e"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libSDL2.zip", checksum: "b5c9dbd90530d30e47195fbc47ef4b5728fb2e961ecc99bf97bd2d963de4e4b1"), 
    ]
)