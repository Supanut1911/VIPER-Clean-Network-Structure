//
//  NewsRouter.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class NewsRouter: NewsRouterInterface {
    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let viewController = UIStoryboard.loadViewController() as NewsViewController
        let presenter: NewsPresenterInterface & NewsInteractorDelegate = NewsPresenter()
        let interactor: NewsInteractorInterface = NewsInteractor()
        let router: NewsRouterInterface = NewsRouter()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        router.viewController = viewController
        return viewController
    }
}
