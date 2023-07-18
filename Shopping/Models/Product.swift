//
//  Product.swift
//  Shopping
//
//  Created by Dima on 17.07.2023.
//

import Foundation


struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Black coat", image: "black", price: 320),
                   Product(name: "Camel coat", image: "camel", price: 320),
                   Product(name: "Carrot coat", image: "carrot", price: 280),
                   Product(name: "Red coat", image: "red2", price: 250),
                   Product(name: "Pudra coat", image: "pudra", price: 240),
                   Product(name: "Terracotta coat", image: "ter", price: 240),
                   Product(name: "Gray coat", image: "gray", price: 320),
                   Product(name: "Gucci coat", image: "gucci", price: 290)
]
