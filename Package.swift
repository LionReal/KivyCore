
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
        		"libfreetype", 
        		"libpng16", 
        		"libpillow", 
        		"libkivy", 
        		"libjpeg", 
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libios.zip", checksum: "045de36953ffc094f5a439fd933b8c28e82fe285c496f7b2ab175eb284295b21"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libfreetype.zip", checksum: "f938bc874bc7418f02835ea04bd5712c7561f299bb5ba5dd1a720d4abf35c1de"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libpng16.zip", checksum: "7b3e83834b9b32f4a2dfd7fc708127c0735fafb1142e81e9a9c3907ed9f3edf8"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libpillow.zip", checksum: "f32d4998b19854451326d4f90db10a06f351cdf9b148b7c52eaee8a7778c28d7"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libkivy.zip", checksum: "4afb8be725031887371ff067c363ec99610edb8ae0974b3a9399b35b3cf592b2"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libjpeg.zip", checksum: "b400d589c9ba7073bf71694624e1ab0723d4fbb54b10646e1c7d8a32350b3ae6"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libpyobjus.zip", checksum: "b7cf173e6b757aa959199d94a73a9451641a9118ced0f847094ef355f48fb9b6"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2_mixer.zip", checksum: "16744d6a3a5f345998e719d5d0b5b94f43db842d7c59cd3604a7a8eb001c6172"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2_ttf.zip", checksum: "60903a66f8790cf6517cf2984463fdf6993cfc201b3445415ee04fec136dd23c"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2_image.zip", checksum: "83f87ebd05925ebe306634c012f2ff1573a529b3013982fb1c7522cec6513645"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2.zip", checksum: "4203734dfae662c814d1598edf97f292ddaafe606a4d5af535f198c25d9439ab"), 
    ]
)