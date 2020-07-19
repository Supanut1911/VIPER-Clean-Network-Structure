//
//  IntroPresenter.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class IntroPresenter: IntroPresenterInterface {

    weak var view: IntroViewInterface?
    var interactor: IntroInteractorInterface?
    var router: IntroRouterInterface?
    
    func presentToHomeVC() {
        router?.presentToHomeModule()
    }
}

extension IntroPresenter: IntroInteractorDelegate {
}
