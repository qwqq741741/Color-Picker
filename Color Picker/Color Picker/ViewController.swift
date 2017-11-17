//
//  ViewController.swift
//  Color Picker
//
//  Created by Wentao Song on 2017/11/16.
//  Copyright © 2017年 Wentao Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var color: UILabel!
    
    
    @IBOutlet weak var colorpick: UIPickerView!
    
    let colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        color.text = colors[row]
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.red
        }
        if(row == 1)
        {
            self.view.backgroundColor = UIColor.orange
        }
        if(row == 2)
        {
            self.view.backgroundColor = UIColor.yellow
        }
        if(row == 3)
        {
            self.view.backgroundColor = UIColor.green
        }
        if(row == 4)
        {
            self.view.backgroundColor = UIColor.blue
        }
        if(row == 5)
        {
            self.view.backgroundColor = UIColor.purple
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorpick.dataSource = self
        self.colorpick.delegate = self
        self.view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

