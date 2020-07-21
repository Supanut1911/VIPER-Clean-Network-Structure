//
//  HomePresenter.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class HomePresenter: HomePresenterInterface {
    
    weak var view: HomeViewInterface?
    var interactor: HomeInteractorInterface?
    var router: HomeRouterInterface?
    
    func showMenu1() {
        router?.presentMenu1()
    }
    
    func showNew() {
        router?.presentNewsModule()
    }
    
    func showThird() {
        router?.presentThridModule()
    }
    
}

extension HomePresenter: HomeInteractorDelegate {
}
