//
//  ViewController.swift
//  News Reader
//
//  Created by Vibhanshu Vaibhav on 23/09/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import SVProgressHUD

class MainVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var source = MASHABLE
    
    let setting = UserDefaults.standard
    
    var articleArray = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = true
        tableView.bounces = false

        setting.set(source, forKey: "Source")
        let identifier = setting.object(forKey: "Source") as! String
        getJSON(identifier: identifier)
        
        initializeProgressHUD()
    }

    @IBAction func refreshButtonPressed(_ sender: UIBarButtonItem) {
        articleArray = []
        tableView.isHidden = true
        initializeProgressHUD()
        let identifier = setting.object(forKey: "Source") as! String
        getJSON(identifier: identifier)
    }

}

extension MainVC {
    
    func getJSON(identifier: String) {
        let url = generateURL(source: identifier)
        Alamofire.request(url, method: .get, parameters: nil).responseJSON {
            response in
            if response.result.isSuccess{
                let articeJSON = JSON(response.result.value!)
                self.parseJSON(json: articeJSON, url: url)
            }
            else {
                SVProgressHUD.showError(withStatus: "Connection Unavailable")
            }
        }
    }
    
    func parseJSON(json: JSON, url: String) {
        for article in json["articles"] {
            if let feedName = String(stringToSentenceString(string: url)),
                let title = article.1["title"].string,
                let desc = article.1["description"].string,
                let articleURL = article.1["url"].string,
                let imageURL = article.1["urlToImage"].string {
                if article.1["author"] == JSON.null {
                    articleArray.append(Article(feedName: feedName, title: title, desc: desc, author: "null", articleURL: articleURL, imageURL: imageURL))
                } else {
                    let author = article.1["author"].string!
                    articleArray.append(Article(feedName: feedName, title: title, desc: desc, author: author, articleURL: articleURL, imageURL: imageURL))
                }
            }
        }
        tableView.reloadData()
        SVProgressHUD.showSuccess(withStatus: "News Feed Ready!")
        SVProgressHUD.dismiss(withDelay: 1)
        tableView.isHidden = false
    }
    
}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleCell") as! ArticleCell
        cell.selectionStyle = .none
        let article = articleArray[indexPath.row]
        cell.updateView(article: article)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let webVC = storyboard?.instantiateViewController(withIdentifier: "webView") as! WebViewVC
        
        webVC.initialize(forURL: articleArray[indexPath.row].articleURL)
        present(webVC, animated: true, completion: nil)
    }
    
}
