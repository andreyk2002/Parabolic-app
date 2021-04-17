//
//  ViewController.swift
//  Parabola
//
//  Created by Andrey Kuksa on 4/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ArgumentTypeSelector: UISegmentedControl!
    
    @IBOutlet weak var XField: UITextField!
    
    @IBOutlet weak var AField: UITextField!
    
    @IBOutlet weak var CField: UITextField!
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTapped(_ sender: Any) {
        
        let xTxt = XField.text
        let aTxt = AField.text
        let cTxt = CField.text
        
        let selectType = ArgumentTypeSelector.selectedSegmentIndex
        if(selectType == 0){
            let x :Int = (xTxt as! NSString).integerValue
            let a: Int = (aTxt as! NSString).integerValue
            let c:Int = (cTxt as! NSString).integerValue
            let result = a * x * x + c
            ResultLabel.text = "result = \(result)"
            
        } else {
            let x :Double = (xTxt as! NSString).doubleValue
            let a: Double = (aTxt as! NSString).doubleValue
            let c:Double = (cTxt as! NSString).doubleValue
            let result = a * x * x + c
            ResultLabel.text = "result = \(result)"
        }
        
    }
    
}

