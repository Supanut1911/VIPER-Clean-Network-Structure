//
//  SpecPage.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class SpecPage: UIViewController {
 
    var new: String = ""
    var des: String = ""
    
    @IBOutlet weak var newsLabel: UILabel!
    @IBOutlet weak var descriptionssNews: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupUI() {
        self.newsLabel.text = new
        self.descriptionssNews.text = des
    }
}
