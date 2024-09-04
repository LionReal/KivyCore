
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libios.zip", checksum: "63f053709a155b6a475c73c0e289f347128cb6c2f8468d7b94871eada394dd95"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libpng16.zip", checksum: "2023fe60fb2fc26df96a03ff4755dbf28e8ff1c46cea1aa9f7c8934c07caa06a"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libkivy.zip", checksum: "80180c972e45e8c58d635f553c0905a73fa487cda065f7a6e11be52a375be01f"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libpyobjus.zip", checksum: "1ff9821d7df766f748f524f9a38c893e357355b282f181e81d3afb032525761c"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_mixer.zip", checksum: "eac86c56de8585740f77ad096d80a7172eaa40b7c11c51d4651fd22c9f44471d"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_ttf.zip", checksum: "d42b95d42a766aaa7f2223bb63ebe831f0210af458c94ee0625511b6d2446763"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_image.zip", checksum: "a09fb28fb6687504c2e7468d46b4e418413f81d88c1911cad48ce67c345ec436"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2.zip", checksum: "6fdfae9722915a0d2e55027ded552409c4c639782866988fb2749b666d3191d6"), 
    ]
)