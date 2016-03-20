//
//  ThirdViewController.swift
//  PizzaPizza
//
//  Created by Wilson Mejía on 19/03/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    var lista_quesos = ["mozarela","cheddar", "parmesano", "sin queso"]
    
    @IBOutlet weak var vpickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(animated: Bool) {
        let queso = appDelegate.queso
        if queso == "mozarela" {
            vpickerView.selectRow(0, inComponent: 0, animated: false)
        }else if queso == "cheddar" {
            vpickerView.selectRow(1, inComponent: 0, animated: false)
        }else if queso == "parmesano" {
            vpickerView.selectRow(2, inComponent: 0, animated: false)
        }else if queso == "sin queso" {
            vpickerView.selectRow(3, inComponent: 0, animated: false)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return lista_quesos.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return lista_quesos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        appDelegate.queso = lista_quesos[row]
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
