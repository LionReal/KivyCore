
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
    	.binaryTarget(name: "libios", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libios.zip", checksum: "99f1adedc029f19734251bf760a3549802c6317aa4326660ac957d4e20a315ea"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libpng16.zip", checksum: "5a7e42c40391d8a8ec7c2fd2fdc5e01d442db932b4a2619203bcc250b4e5d6e9"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libkivy.zip", checksum: "d09b530e58a93b290ab3a150f2d310d6b2f0963d81630c600f464c53083e94eb"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libpyobjus.zip", checksum: "a4371427dac3475f6f79db4297f322f25a30bd3fd790508c15e2a36ff9609dc3"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libSDL2_mixer.zip", checksum: "e06e365cd8219ea7fbf5ebb6ce8acf152f41a26d81b039482193f29fe88f2122"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libSDL2_ttf.zip", checksum: "403bb3754fa1242c6ee70ed646f5ca3f17ed5f2ca7dd2d9ad08d13a3adb79433"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libSDL2_image.zip", checksum: "20eef5615f1fff23c26a6127b1cf310951a7b7dfb1fc840695f459881bc43747"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.1/libSDL2.zip", checksum: "4140d5e0deb920b9b768b1b283a6a55d3b267cab5e9e6cb67fe91062e13a88c6"), 
    ]
)