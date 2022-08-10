//
//  Article.swift
//  News
//
//  Created by Fırat Kahvecioğlu on 10.08.2022.
//

import Foundation


struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String?
    let description: String?
}
