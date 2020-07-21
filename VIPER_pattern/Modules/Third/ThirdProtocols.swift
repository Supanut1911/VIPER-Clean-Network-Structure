//
//  ThirdProtocols.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 21/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol ThirdPresenterInterface: class {
    var view: ThirdViewInterface? { get set }
    var interactor: ThirdInteractorInterface? { get set }
    var router: ThirdRouterInterface? { get set }
}

protocol ThirdViewInterface: class {
    var presenter: ThirdPresenterInterface? { get set }
}

protocol ThirdRouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
}

protocol ThirdInteractorInterface: class {
    var presenter: ThirdInteractorDelegate? { get set }
}

protocol ThirdInteractorDelegate: class {
}

protocol ThirdVCDelegate: class {
    func power(num1: Int, num2: Int) -> String
}
