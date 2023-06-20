//
//  ParsingModels.swift
//  Apple News
//
//  Created by Andrei Sushkou on 14.06.23.
//

import Foundation

struct ArticleResponse: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String?
    let urlToImage: String?
    let source: Source
    let url: String
}

struct Source: Decodable {
    let name: String
}
