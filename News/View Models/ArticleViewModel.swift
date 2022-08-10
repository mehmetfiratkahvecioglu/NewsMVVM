//
//  ArticleViewModel.swift
//  News
//
//  Created by Fırat Kahvecioğlu on 10.08.2022.
//

import Foundation

struct ArticleListViewModel{
    let articles: [Article]
}

extension ArticleListViewModel{
    var numberOfSections: Int{
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}


struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
    
}

extension ArticleViewModel{
    
    
    
    var title: String{
        return self.article.title ?? "*** Unknown title ***"
    }
    
    var description: String{
        return self.article.description ?? "*** Unkown Description ***"
    }
    
    
    
}
