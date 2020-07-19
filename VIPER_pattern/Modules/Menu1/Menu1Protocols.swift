//
//  Menu1Protocols.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 16/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol Menu1PresenterInterface: class {
    var view: Menu1ViewInterface? { get set }
    var interactor: Menu1InteractorInterface? { get set }
    var router: Menu1RouterInterface? { get set }
}

protocol Menu1ViewInterface: class {
    var presenter: Menu1PresenterInterface? { get set }
}

protocol Menu1RouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
}

protocol Menu1InteractorInterface: class {
    var presenter: Menu1InteractorDelegate? { get set }
}

protocol Menu1InteractorDelegate: class {
}
