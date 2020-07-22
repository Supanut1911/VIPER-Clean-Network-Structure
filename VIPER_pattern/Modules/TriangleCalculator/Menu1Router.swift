//
//  Menu1Router.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 16/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class Menu1Router: Menu1RouterInterface {
    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let viewController = UIStoryboard.loadViewController() as Menu1ViewController
        let presenter: Menu1PresenterInterface & Menu1InteractorDelegate = Menu1Presenter()
        let interactor: Menu1InteractorInterface = Menu1Interactor()
        let router: Menu1RouterInterface = Menu1Router()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        router.viewController = viewController
        return viewController
    }
}
