
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libios.zip", checksum: "4d45f20f2e9ccea5ce98a0f66cfe57538f49e599053de3b87b0f789ce793eac7"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libpng16.zip", checksum: "b544020a5bed32382984f9cce291ca30169d2536ec659ab2ba377c54f0d48fe3"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libkivy.zip", checksum: "49ad69fe704b82005261927571c7663288cdc2d2cbdd3cea34eec1edada50077"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libpyobjus.zip", checksum: "2b1f76d57d4e063243bbc5f726e97f14ddc73cff84e0cefe27865c7c4d42888d"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2_mixer.zip", checksum: "f2b99d96222749782be2fba5a3229db80b5437512f42968c0c53b6c1782d4712"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2_ttf.zip", checksum: "48008b553445abcc1380568f1f5b513a354442afb9679d597c32daa395cc4a6f"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2_image.zip", checksum: "102768ba8e21a35458c1594a92bfc2f8007e9595f5658b1238056aa27d9864ff"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2.zip", checksum: "2640ab12b752539e715fc4323774b9a3e5026619726d6d230c0d1a888e9e40ea"), 
    ]
)