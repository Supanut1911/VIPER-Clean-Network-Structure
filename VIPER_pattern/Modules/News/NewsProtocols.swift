//
//  NewsProtocols.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol NewsPresenterInterface: class {
    var view: NewsViewInterface? { get set }
    var interactor: NewsInteractorInterface? { get set }
    var router: NewsRouterInterface? { get set }
    
    func fetchNews()

}

protocol NewsViewInterface: class {
    var presenter: NewsPresenterInterface? { get set }
    func updateNew(news: NewResponse)
}

protocol NewsRouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
}

protocol NewsInteractorInterface: class {
    var presenter: NewsInteractorDelegate? { get set }
    func loadNews()
}

protocol NewsInteractorDelegate: class {
        func reciveFetchData(response: NewResponse)
}
