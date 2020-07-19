//
//  IntroRouter.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class IntroRouter: IntroRouterInterface {
    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let viewController = UIStoryboard.loadViewController() as IntroViewController
        let presenter: IntroPresenterInterface & IntroInteractorDelegate = IntroPresenter()
        let interactor: IntroInteractorInterface = IntroInteractor()
        let router: IntroRouterInterface = IntroRouter()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        router.viewController = viewController
        return viewController
    }
    
    //present
    func presentToHomeModule() {
        let homeVC = HomeRouter.createModule()
        let navigationVC = UINavigationController.init(rootViewController: homeVC)
        navigationVC.modalPresentationStyle = .fullScreen
        navigationVC.navigationItem.title = "HOME"
        navigationVC.navigationBar.topItem?.title = "HOME"
        viewController?.present(navigationVC, animated: true, completion: nil)
    }
}
