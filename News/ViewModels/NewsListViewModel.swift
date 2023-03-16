//
//  NewsListViewModel.swift
//  News
//
//  Created by Kresimir Ivanjko on 15.03.2023..
//

import Foundation

class NewsListModel {
    
    var newsVM = [NewsVievModel]()
    
    let reuseID = "news"
    
    func getNews(completion: @escaping ([NewsVievModel]) -> Void) {
        NetworkManager.shared.getNews { (news) in
            guard let news = news else { return }
            let newsVM = news.map(NewsVievModel.init)
            DispatchQueue.main.async {
                self.newsVM = newsVM
                completion(newsVM)
            }
        }
    }
}
