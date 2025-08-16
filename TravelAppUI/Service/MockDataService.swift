//
//  MockDataService.swift
//  TravelAppUI
//
//  Created by Cem Bıçakcı on 16.08.2025.
//

import Foundation

class MockDataService {
    
    static let instance = MockDataService()
    
    private init() { }
}

extension MockDataService {
    func getCategories() -> [Category] {
        [
            .init(
                name: "Mountain",
                image: .mountain_icon
            ),
            .init(
                name: "Waterfall",
                image: .waterfall_icon
            ),
            .init(
                name: "River",
                image: .river_icon
            )
        ]
    }
}

extension MockDataService {
    func getMountains() -> [Destination] {
        [
            .init(
                title: "Rinjani Mountain",
                location: "Lombok, Indonesia",
                description: "",
                amount: "$48",
                image: .mountain_image_2
            ),
            .init(
                title: "Bromo Mountain",
                location: "East Java, Indonesia",
                description: "",
                amount: "$34",
                image: .mountain_image_1
            )
        ]
    }
}
extension MockDataService {
    func getPopularDestination() -> [Destination] {
        [
            .init(
                title: "The Pink Beach",
                location: "Komodo Island, Indonesia",
                description: "Famous for its unique pink-colored sand and crystal-clear waters, perfect for snorkeling and relaxing by the sea.",
                amount: "$36",
                image: .beach_image_1
            ),
            .init(
                title: "Meru Tower",
                location: "Bali, Indonesia",
                description: "A sacred Balinese temple surrounded by lush gardens, offering a glimpse into the island’s rich culture and spirituality.",
                amount: "$36",
                image: .tower_image_1
            ),
            .init(
                title: "Toraja Land",
                location: "South Sulawesi, Indonesia",
                description: "Known for its traditional villages, unique architecture, and vibrant cultural ceremonies in the highlands.",
                amount: "$47",
                image: .land_image_1
            )
        ]
    }
}

