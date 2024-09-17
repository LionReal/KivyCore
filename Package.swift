
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
    	.binaryTarget(name: "libios", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.4/libios.zip", checksum: "ed464386dee9ca25294ae6a234955125f2fea39f719f333a0a3475491f677048"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.4/libpng16.zip", checksum: "c9b4b91441205dd421fd0924e406d499ec4c6476bce0adf1db420b52aef5d928"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.4/libkivy.zip", checksum: "f992ea741e1b8be78eff93a115455ab8c439821fdc52bd3f58274f66c8f0de2b"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.4/libpyobjus.zip", checksum: "a50a27c507441017e1b405a365dac03f7c578a9992bf783ff4afe35ad17016d1"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.4/libSDL2_mixer.zip", checksum: "8e692ed0371a3dd4ff79a295cbd4999f5b39d1512435890a17f550ae2a42158f"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.4/libSDL2_ttf.zip", checksum: "a8f8bbbf4216e61faa8499ef5a2cc44bd4128ebeaa6209e8c60e5e86d9e9aa89"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.4/libSDL2_image.zip", checksum: "fc8d7ed38dc5aa8e8e26230a9816eec019af818f0d5e10efa036932856d7809c"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.4/libSDL2.zip", checksum: "32a366c233536db0f0ea0403fcf741ece6b04cf16e416f003b64c24d2e64cac2"), 
    ]
)