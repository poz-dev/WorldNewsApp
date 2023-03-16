//
//  News.swift
//  News
//
//  Created by Kresimir Ivanjko on 15.03.2023..
//

import Foundation


struct News: Decodable {
    let author: String?
    let title: String?
    let description: String?
    let urlToImage: String?
    let url: String?
}

struct NewsEnvelope: Decodable {
    let status: String
    let totalResults: Int
    let articles: [News]
}

// MARK: - JSON structure
/*
 {
 "status": "ok",
 "totalResults": 65,
 -"articles": [
 -{
 -"source": {
 "id": "associated-press",
 "name": "Associated Press"
 },
 "author": "Stan Choe",
 "title": "Stocks tumble on Wall Street on renewed fears about banks - The Associated Press - en Español",
 "description": "NEW YORK (AP) — Stocks are back to falling on Wall Street Wednesday as worries worsen about the strength of banks on both sides of the Atlantic. The S&P 500 was 1.3% lower in midday trading, while markets in Europe fell more sharply as shares of Switzerland’s…",
 "url": "https://apnews.com/article/stocks-economy-china-banks-svb-fed-crude-f3e78bc438027148ee1302b003c6a8a8",
 "urlToImage": "https://storage.googleapis.com/afs-prod/media/b39131425b21495cb44e86347ea159ad/3000.webp",
 "publishedAt": "2023-03-15T15:33:45Z",
 "content": "NEW YORK (AP) Stocks are back to falling on Wall Street Wednesday as worries worsen about the strength of banks on both sides of the Atlantic.\r\nThe S&amp;P 500 was 1.3% lower in midday trading, while… [+5086 chars]"
 },
 */
