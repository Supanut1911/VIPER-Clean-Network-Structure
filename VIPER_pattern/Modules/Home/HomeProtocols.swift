//
//  HomeProtocols.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol HomePresenterInterface: class {
    var view: HomeViewInterface? { get set }
    var interactor: HomeInteractorInterface? { get set }
    var router: HomeRouterInterface? { get set }
    
    func showMenu1()
    func showNew()
    func showThird()
    func showShape()
}

protocol HomeViewInterface: class {
    var presenter: HomePresenterInterface? { get set }
}

protocol HomeRouterInterface: class {
    var viewController: UIViewController? { get set }
    var rootViewController: UIViewController? { get set }
    static func createModule() -> UIViewController
    
    func presentMenu1()
    func presentNewsModule()
    func presentThridModule()
    func presentCalShapeModule()
}

protocol HomeInteractorInterface: class {
    var presenter: HomeInteractorDelegate? { get set }
}

protocol HomeInteractorDelegate: class {
}
