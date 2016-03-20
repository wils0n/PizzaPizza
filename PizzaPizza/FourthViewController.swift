//
//  FourthViewController.swift
//  PizzaPizza
//
//  Created by Wilson Mejía on 19/03/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBOutlet weak var i_jamon: UIButton!
    @IBOutlet weak var i_pepperoni: UIButton!
    @IBOutlet weak var i_pavo: UIButton!
    @IBOutlet weak var i_salchicha: UIButton!
    @IBOutlet weak var i_aceituna: UIButton!
    @IBOutlet weak var i_cebolla: UIButton!
    @IBOutlet weak var i_anchoa: UIButton!
    @IBOutlet weak var i_pinia: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func eligioJamon(sender: AnyObject) {
        self.i_jamon.setImage(UIImage(named: "check_b.png"), forState: UIControlState.Normal)
        appDelegate.ingredientes.append("jamon")

    }
    
    @IBAction func eligioPepperoni(sender: AnyObject) {
        self.i_pepperoni.setImage(UIImage(named: "check_b.png"), forState: UIControlState.Normal)
        appDelegate.ingredientes.append("pepperoni")

    }
    
    @IBAction func eligioPavo(sender: AnyObject) {
        self.i_pavo.setImage(UIImage(named: "check_b.png"), forState: UIControlState.Normal)
        appDelegate.ingredientes.append("pavo")
    }
    
    @IBAction func eligioSalchicha(sender: AnyObject) {
        self.i_salchicha.setImage(UIImage(named: "check_b.png"), forState: UIControlState.Normal)
        appDelegate.ingredientes.append("salchicha")
    }
    
    @IBAction func eligioAceituna(sender: AnyObject) {
        self.i_aceituna.setImage(UIImage(named: "check_b.png"), forState: UIControlState.Normal)
        appDelegate.ingredientes.append("aceituna")
    }
    
    @IBAction func eligioCebolla(sender: AnyObject) {
        self.i_cebolla.setImage(UIImage(named: "check_b.png"), forState: UIControlState.Normal)
        appDelegate.ingredientes.append("cebolla")
    }
    
    @IBAction func eligioAnchoa(sender: AnyObject) {
        self.i_anchoa.setImage(UIImage(named: "check_b.png"), forState: UIControlState.Normal)
        appDelegate.ingredientes.append("anchoa")
    }
    
    @IBAction func eligioPinia(sender: AnyObject) {
        self.i_pinia.setImage(UIImage(named: "check_b.png"), forState: UIControlState.Normal)
        appDelegate.ingredientes.append("pinia")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showMiOrden(sender: AnyObject) {
        print("Tamanio: \(appDelegate.tamanio)")
        print("Masa: \(appDelegate.masa)")
        print("Queso: \(appDelegate.queso)")
    }

}
