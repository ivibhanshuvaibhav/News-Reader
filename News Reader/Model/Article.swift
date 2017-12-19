//
//  Article.swift
//  News Reader
//
//  Created by Vibhanshu Vaibhav on 23/09/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit

class Article {

    let feedName: String
    let title: String
    let desc: String
    let author: String
    let articleURL: String
    let imageURL: String
    
    init(feedName: String, title: String, desc: String, author: String, articleURL: String, imageURL: String) {
        self.feedName = feedName
        self.title = title
        self.desc = desc
        self.author = author
        self.articleURL = articleURL
        self.imageURL = imageURL
    }
    
}
