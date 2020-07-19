//
//  NewsViewController.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController, StoryboardLoadable {
    var presenter: NewsPresenterInterface?
    var newsList: [NewResponseElement]?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    
    func fetchData() {
        presenter?.fetchNews()
    }
}

extension NewsViewController: NewsViewInterface {
    func updateNew(news: NewResponse) {
//        self.newsLabel.text = news.first?.title
//        self.descriptionLabel.text = news.first?.body
        newsList = news
        tableView.reloadData()
    }
}

extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsCell
        cell.setupUI(titleText: newsList?[indexPath.row].title ?? "",
                     contentText: newsList?[indexPath.row].body ?? "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 300
    }
}
