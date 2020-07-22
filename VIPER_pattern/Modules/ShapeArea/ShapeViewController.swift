//
//  ShapeViewController.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 22/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class ShapeViewController: UIViewController, StoryboardLoadable {
    var presenter: ShapePresenterInterface?
    
    var toolBar = UIToolbar()
    var picker = UIPickerView()
    
    var shapeDelegate: ShapeAreaCalculateDelegate?
    var selectedShape: String?
    var shapes = ["Triangle", "Rectangle", "Circle"]
    
    @IBOutlet weak var selectedShapeLabel: UILabel!
    @IBOutlet weak var titleVar1: UILabel!
    @IBOutlet weak var titleVar2: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var var1TextField: UITextField!
    @IBOutlet weak var var2TextField: UITextField!
    
    @IBOutlet weak var pickerButton: UIButton!
    
    @IBOutlet weak var stackSecView: UIStackView!
    
    @IBOutlet weak var stackViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var stackViewBottomConstarint: NSLayoutConstraint!
    @IBOutlet weak var viewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calDidTap(_ sender: Any) {
        updateView(shapeName: selectedShape ?? "")
    }
    
    @IBAction func pickDidTap(_ sender: Any) {
        picker = UIPickerView.init()
        picker.delegate = self
        picker.backgroundColor = UIColor.white
        picker.setValue(UIColor.black, forKey: "textColor")
        picker.autoresizingMask = .flexibleWidth
        picker.contentMode = .center
        picker.frame = CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 300, width: UIScreen.main.bounds.size.width, height: 300)
        self.view.addSubview(picker)

        toolBar = UIToolbar.init(frame: CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 300, width: UIScreen.main.bounds.size.width, height: 50))
        toolBar.items = [UIBarButtonItem.init(title: "Done", style: .done, target: self, action: #selector(onDoneButtonTapped))]
        self.view.addSubview(toolBar)
    }
    
    @objc func onDoneButtonTapped() {
        toolBar.removeFromSuperview()
        picker.removeFromSuperview()
    }
    
    func updateView(shapeName: String) {
        shapeDelegate = self
        switch shapeName {
        case "Triangle":
            stackSecView.isHidden = false
            stackViewTopConstraint.constant = 20
            stackViewBottomConstarint.constant = 40
            viewHeightConstraint.constant = 240
            
            titleVar1.text = "Widht"
            titleVar2.text = "Height"
            
            let w = Double(var1TextField.text ?? "0.0")
            let h = Double(var2TextField.text ?? "0.0")
   
            
            let result = shapeDelegate?.calArea(width: w ?? 0.0,
                                   height: h ?? 0.0,
                                   shape: "T")
            print("\(w) , \(h), \(result)")
            self.resultLabel.text = "\(result ?? 0.0)"
        case "Rectangle":
            stackSecView.isHidden = false
            stackViewTopConstraint.constant = 20
            stackViewBottomConstarint.constant = 40
            viewHeightConstraint.constant = 240
            
            titleVar1.text = "Widht"
            titleVar2.text = "Height"
            
            let w = Double(var1TextField.text ?? "0.0")
            let h = Double(var2TextField.text ?? "0.0")
            
            let result =  shapeDelegate?.calArea(width: w ?? 0.0,
                                   height: h ?? 0.0,
                                   shape: "R")
            self.resultLabel.text = "\(result ?? 0.0)"
        case "Circle":
            stackSecView.isHidden = true
            stackViewTopConstraint.constant = 0
            stackViewBottomConstarint.constant = 0
            viewHeightConstraint.constant = 170
            
            titleVar1.text = "Radius"
            
            let r = Double(var1TextField.text ?? "0.0")
            
            let result =  shapeDelegate?.calArea(radius: r ?? 0.0)
            self.resultLabel.text = "\(result ?? 0.0)"
        default:
            break
        }
    }
}

extension ShapeViewController: ShapeViewInterface {
    
}

extension ShapeViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return shapes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedShapeLabel.text = shapes[row]
        selectedShape = shapes[row]

    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return shapes[row]
    }
}

extension ShapeViewController: ShapeAreaCalculateDelegate {
    func calArea(width: Double, height: Double, shape: String) -> Double {
        switch shape {
        case "T":
            return 0.5 * width * height
        case "R":
            return width * height
        default:
            return 0.0
        }
    }
    
    func calArea(radius: Double) -> Double {
        return 3.414 * radius * radius
    }
}
