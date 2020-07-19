//
//  NewsPresenter.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class NewsPresenter: NewsPresenterInterface {
    
    weak var view: NewsViewInterface?
    var interactor: NewsInteractorInterface?
    var router: NewsRouterInterface?
    
    func fetchNews() {
          interactor?.loadNews()
      }
}

extension NewsPresenter: NewsInteractorDelegate {
    func reciveFetchData(response: NewResponse) {
        view?.updateNew(news: response)
    }
}
