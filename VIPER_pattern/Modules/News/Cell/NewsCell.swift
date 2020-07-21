//
//  NewsCell.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var contentLabel: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupUI(titleText: String, contentText: String) {
        self.titleLabel.text = titleText
        self.contentLabel.text = contentText
    }
}
