//
//  ThirdRouter.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 21/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class ThirdRouter: ThirdRouterInterface {
    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let viewController = UIStoryboard.loadViewController() as ThirdViewController
        let presenter: ThirdPresenterInterface & ThirdInteractorDelegate = ThirdPresenter()
        let interactor: ThirdInteractorInterface = ThirdInteractor()
        let router: ThirdRouterInterface = ThirdRouter()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        router.viewController = viewController
        return viewController
    }
}
