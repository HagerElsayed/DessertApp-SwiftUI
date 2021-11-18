//
//  Dessert.swift
//  DessertApp_SwiftUI
//
//  Created by Hager Elsayed on 12/11/2021.
//

import Foundation

struct Dessert: Identifiable, Hashable {
    public var id: Int
    public var image: String
    public var type: String
    public var name: String
    public var price: String
    public var description: String
}

// MARK: - Dummy Data
var dessertData = [
    Dessert(
        id: 0,
        image: "cupcake",
        type: "Choclate",
        name: "Cupcake",
        price: "$2.99",
        description: "Choclate Cup cake "
    ),
    Dessert(
        id: 1,
        image: "dounts1",
        type: "Chocolate",
        name: "Chocolate donuts",
        price: "$2",
        description: "Doughnuts are a kind of ring-shaped snack food popular in many countries, which are usually deep fried from flour doughs"
    ),
    Dessert(
        id: 2,
        image: "ice_cream",
        type: "vanilla",
        name: "Ice cream vanilla",
        price: "$1",
        description: "Vanilla Ice cream"
    ),
    Dessert(
        id: 3,
        image: "macarons",
        type: "marshmello",
        name: "Macarons",
        price: "$3",
        description: "This French macaron recipe makes a batch of the most dainty, delicate, and delicious cookies that will float right into your mouth and disappear."
    ),
    Dessert(
        id: 4,
        image: "choclate",
        type: "Chocolate",
        name: "Chocolate with almonds",
        price: "$2.99",
        description: "Chocolate with almonds"
    )
]
