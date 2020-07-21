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
    
    public var selectedIndex: Int?
    
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//    {
//        self.performSegue(withIdentifier: "ToSpecPage", sender: indexPath.row)
//
//        let selectedRow = indexPath.row
//        let sb = UIStoryboard.init(name: "News", bundle: nil)
//        let destinationVC = sb.instantiateViewController(
//            withIdentifier: "SpecPage") as! SpecPage
//        let news = newsList?[indexPath.row]
//        destinationVC.new = news?.title ?? ""
//        destinationVC.des = news?.body ?? ""
//
//        self.present(destinationVC, animated: true, completion: nil)
//    }
    }
}
