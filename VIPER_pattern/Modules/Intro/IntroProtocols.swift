//
//  IntroProtocols.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol IntroPresenterInterface: class {
    var view: IntroViewInterface? { get set }
    var interactor: IntroInteractorInterface? { get set }
    var router: IntroRouterInterface? { get set }
    
    func presentToHomeVC()
}

protocol IntroViewInterface: class {
    var presenter: IntroPresenterInterface? { get set }
}

protocol IntroRouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
    
    func presentToHomeModule()
}

protocol IntroInteractorInterface: class {
    var presenter: IntroInteractorDelegate? { get set }
}

protocol IntroInteractorDelegate: class {
}
