
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
    	.binaryTarget(name: "libios", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.0/libios.zip", checksum: "a70a1c9a10236980f8b01f0400fde096f4401a0c35c4d7e6f754379c5c3c74df"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.0/libpng16.zip", checksum: "570aa617d0abe9df111fe83e0c7e6072171f23505bf09300426df1aa143159a2"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.0/libkivy.zip", checksum: "7577863c64615ff6d268aef3f54550fdbe235f0a2026b137eeb46c4fc00e5112"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.0/libpyobjus.zip", checksum: "9e42afaa0e1c468985d70d009800399b8ef149cdfa85da7ff5612784aed7b1e8"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.0/libSDL2_mixer.zip", checksum: "cceb236c074c28849f45b391ea248d430870f7922a6143ed675f2c8d5ec36283"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.0/libSDL2_ttf.zip", checksum: "9ee47687a8398d696c3b5a403128201867781484727ac62cc4fe1de3c621fbad"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.0/libSDL2_image.zip", checksum: "50d784056625bd72ebc76806428a54f1fb1f81417bb058e9d3fedba6054aad93"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/KivySwiftLink/KivyCore/releases/download/311.0.0/libSDL2.zip", checksum: "c9a293aebdfab54e9125ec40fefd5546257d455c9366f868c3d109c58802dbbe"), 
    ]
)