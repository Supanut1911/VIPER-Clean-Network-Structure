//
//  IntroViewController.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, StoryboardLoadable {
    var presenter: IntroPresenterInterface?

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var logoView: UIView! {
        didSet {
            self.logoView.alpha = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI() {
        UIView.animate(withDuration: 2.5, animations: {
            self.view.layoutIfNeeded()
            self.logoView.alpha = 1
        }) { (success) in
            self.presenter?.presentToHomeVC()
        }
    }
    @IBAction func didTap(_ sender: Any) {
        self.presenter?.presentToHomeVC()
    }
    
    
}

extension IntroViewController: IntroViewInterface {
}
