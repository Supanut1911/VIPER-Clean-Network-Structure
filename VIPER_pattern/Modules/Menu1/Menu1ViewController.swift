//
//  Menu1ViewController.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 16/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class Menu1ViewController: UIViewController, StoryboardLoadable {
    var presenter: Menu1PresenterInterface?

    @IBOutlet weak var widthTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var areaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calDidTap(_ sender: Any) {
        guard let w = Int(widthTextField.text ?? "") else { return  }
        guard let h = Int(heightTextField.text ?? "") else { return  }
        let area = ShapeManager.shared.calArea(w: w, h: h)
        self.areaLabel.text = String(area)
    }
}

extension Menu1ViewController: Menu1ViewInterface {
}


