//
//  ShapePresenter.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 22/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class ShapePresenter: ShapePresenterInterface {
    weak var view: ShapeViewInterface?
    var interactor: ShapeInteractorInterface?
    var router: ShapeRouterInterface?
}

extension ShapePresenter: ShapeInteractorDelegate {
}
