//
//  Menu1Presenter.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 16/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class Menu1Presenter: Menu1PresenterInterface {
    weak var view: Menu1ViewInterface?
    var interactor: Menu1InteractorInterface?
    var router: Menu1RouterInterface?
}

extension Menu1Presenter: Menu1InteractorDelegate {
}
