//
//  HomeViewController.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, StoryboardLoadable {
    var presenter: HomePresenterInterface?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("here")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.setRadialGradientBackground(colors: [.red, .yellow])
    }
    
 
    @IBAction func menu1DidTap(_ sender: Any) {
        presenter?.showMenu1()
    }
    
    @IBAction func menu2DidTap(_ sender: Any) {
        presenter?.showNew()
    }
    
    
    @IBAction func menu3DidTap(_ sender: Any) {
        presenter?.showThird()
    }
    
}

extension HomeViewController: HomeViewInterface {
}
