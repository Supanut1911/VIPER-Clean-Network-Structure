//
//  ShapeProtocols.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 22/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol ShapePresenterInterface: class {
    var view: ShapeViewInterface? { get set }
    var interactor: ShapeInteractorInterface? { get set }
    var router: ShapeRouterInterface? { get set }
}

protocol ShapeViewInterface: class {
    var presenter: ShapePresenterInterface? { get set }
}

protocol ShapeRouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
}

protocol ShapeInteractorInterface: class {
    var presenter: ShapeInteractorDelegate? { get set }
}

protocol ShapeInteractorDelegate: class {
}

protocol ShapeAreaCalculateDelegate: class {
    func calArea(width: Double, height: Double, shape: String) -> Double
    func calArea(radius: Double) -> Double
}
