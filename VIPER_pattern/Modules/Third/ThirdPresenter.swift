//
//  ThirdPresenter.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 21/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class ThirdPresenter: ThirdPresenterInterface {
    weak var view: ThirdViewInterface?
    var interactor: ThirdInteractorInterface?
    var router: ThirdRouterInterface?
}

extension ThirdPresenter: ThirdInteractorDelegate {
}
