//
//  CategoriesModel.swift
//  OnlineOrderingFood_MVVM
//
//  Created by Xursandbek Qambaraliyev on 11/07/23.
//

import Foundation

// MARK: - Welcome
struct CategoriesModel: Codable {
    let сategories: [Сategory]
}

// MARK: - Сategory
struct Сategory: Codable {
    let id: Int
    let name: String
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "image_url"
    }
}
