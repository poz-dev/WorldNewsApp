//
//  NewsViewModel.swift
//  News
//
//  Created by Kresimir Ivanjko on 15.03.2023..
//

import Foundation

struct NewsVievModel {
    let news: News
    
    var author: String {
        return news.author ?? "Unknown"
    }
    
    var title: String {
        return news.title ?? ""
    }
    
    var description: String {
        return news.description ?? ""
    }
    
    var url: String {
        return news.url ?? ""
    }
    
    var urlToImage: String {
        return news.urlToImage ?? ""
    }
}
