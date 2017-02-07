//
//  ViewController.swift
//  Calculator
//
//  Created by Hongyuan Jiang on 2/4/17.
//  Copyright © 2017 Hongyuan Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AKPickerViewDataSource, AKPickerViewDelegate {
    
    @IBOutlet var pickerView: AKPickerView!
    
    let tiptitles = ["10%", "15%", "18%", "20%", "30%"]
    let tippercents = [0.1, 0.15, 0.18, 0.2, 0.3]


    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        
        self.pickerView.font = UIFont(name: "HelveticaNeue-Light", size: 20)!
        self.pickerView.highlightedFont = UIFont(name: "HelveticaNeue-Light", size: 20)!
        self.pickerView.pickerViewStyle = .flat
        self.pickerView.maskDisabled = false
        self.pickerView.reloadData()
        
        self.view.layer.insertSublayer(CAGradientLayer(), at:0)
        
        self.pickerView.selectItem(1)
        
        self.billField.becomeFirstResponder()
        
            }
    
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tippercents[self.pickerView.selectedItem]
        let total = bill + tip
        
        
        totalLabel.text = String(format: "$%.2f", total)
        tipLabel.text = String(format: "$%.2f + $%.2f", bill, tip)

    }
    
    
    func numberOfItemsInPickerView(_ pickerView: AKPickerView) -> Int {
        return self.tiptitles.count
    }
    
    func pickerView(_ pickerView: AKPickerView, titleForItem item: Int) -> String {
        return self.tiptitles[item]
    }

    func pickerView(_ pickerView: AKPickerView, didSelectItem item: Int) {
        self.calculateTip(pickerView)
        var background = CAGradientLayer()
        
        if item == 0 {
            background = CAGradientLayer().blueColor()
        } else if item == 1 {
            background = CAGradientLayer().turquoiseColor()
        } else if item == 2 {
            background = CAGradientLayer().purpleColor()
        } else if item == 3 {
            background = CAGradientLayer().pinkColor()
        } else if item == 4 {
            background = CAGradientLayer().orangeColor()
            
        }
        
        
        background.frame = self.view.bounds
        self.view.layer.replaceSublayer((self.view.layer.sublayers?[0])!, with: background)
        

    }
    
    
     func pickerView(_ pickerView: AKPickerView, configureLabel label: UILabel, forItem item: Int) {
     label.textColor = UIColor(red:(255/255.0),green:(255/255.0), blue: (255/255.0), alpha:0.5)

     label.highlightedTextColor = UIColor(red:(255/255.0),green:(255/255.0), blue: (255/255.0), alpha:1)

     }
    
    func pickerView(_ pickerView: AKPickerView, marginForItem item: Int) -> CGSize {
        return CGSize(width: 40, height: 20)
    }

    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // println("\(scrollView.contentOffset.x)")
    }
    
    
}
    
