import PackageDescription

var package = Package(
    name: "MongoKitten",
    targets: [
        Target(name: "GeoJSON"),
        Target(name: "MongoKitten", dependencies: ["GeoJSON"])
        ],
    dependencies: [
        // For MongoDB Documents
        .Package(url: "https://github.com/OpenKitten/BSON.git", "4.1.0-beta2"),

        // Authentication
        .Package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", Version(0,6,7)),
        
        // Provides sockets
        .Package(url: "https://github.com/vapor/socks.git", majorVersion: 1),

        // SSL
        .Package(url: "https://github.com/vapor/tls.git", majorVersion: 1),

        // Logging
        .Package(url: "https://github.com/OpenKitten/LogKitten.git", majorVersion: 0, minor: 3),
    ]
)
