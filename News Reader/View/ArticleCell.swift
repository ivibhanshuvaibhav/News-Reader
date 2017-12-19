//
//  ArticleCell.swift
//  News Reader
//
//  Created by Vibhanshu Vaibhav on 23/09/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ArticleCell: UITableViewCell {

    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var articleDescription: UILabel!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var feedName: UILabel!
    
    var tempImage: UIImage!
    
    func updateView(article: Article) {
        feedName.text = article.feedName
        articleTitle.text = article.title
        articleDescription.text = article.desc
        if article.author == "null" {
            authorName.isHidden = true
        } else {
            authorName.text = article.author
        }
        articleImage.af_setImage(withURL: URL(string: article.imageURL)!)
    }
    
}
