//
//  ShapeRouter.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 22/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class ShapeRouter: ShapeRouterInterface {
    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let viewController = UIStoryboard.loadViewController() as ShapeViewController
        let presenter: ShapePresenterInterface & ShapeInteractorDelegate = ShapePresenter()
        let interactor: ShapeInteractorInterface = ShapeInteractor()
        let router: ShapeRouterInterface = ShapeRouter()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        router.viewController = viewController
        return viewController
    }
}
