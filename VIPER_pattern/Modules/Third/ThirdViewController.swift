//
//  ThirdViewController.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 21/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, StoryboardLoadable {
    var presenter: ThirdPresenterInterface?

    weak var thirdDelegate: ThirdVCDelegate?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var baseTF: UITextField!
    @IBOutlet weak var expTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func calculateDidTAp(_ sender: Any) {
        thirdDelegate = self
        let num1 = Int(baseTF.text ?? "")
        let num2 = Int(expTF.text ?? "")
        let result = thirdDelegate?.power(num1: num1 ?? 0,
                             num2: num2 ?? 0)
        resultLabel.text = result
    }
    
}

extension ThirdViewController: ThirdViewInterface {
}

extension ThirdViewController: ThirdVCDelegate{
    func power(num1: Int, num2: Int) -> String {
        let res = num1 * num2
        return "\(res)"
    }
}
