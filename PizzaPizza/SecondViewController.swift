//
//  SecondViewController.swift
//  PizzaPizza
//
//  Created by Wilson Mejía on 19/03/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBOutlet weak var m_delgada: UIButton!
    @IBOutlet weak var m_crujiente: UIButton!
    @IBOutlet weak var m_gruesa: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let masa = appDelegate.masa
        
        if masa == "" {
            self.m_delgada.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
            self.m_crujiente.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
            self.m_gruesa.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
        }else{
            if masa == "delgada" {
                self.m_delgada.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
            }else if masa == "crujiente" {
                self.m_crujiente.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
            }else if masa == "gruesa" {
                self.m_gruesa.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
            }
        }

    }
    
    @IBAction func seleccionoDelgada(sender: AnyObject) {
        self.m_delgada.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
        appDelegate.masa = "delgada"
        
        self.m_crujiente.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
        self.m_gruesa.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)

    }
    
    @IBAction func seleccionoCrujiente(sender: AnyObject) {
        self.m_crujiente.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
        appDelegate.masa = "crujiente"
        
        self.m_delgada.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
        self.m_gruesa.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)

    }
    
    @IBAction func seleccionoGruesa(sender: AnyObject) {
        self.m_gruesa.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
        appDelegate.masa = "gruesa"
        
        self.m_delgada.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
        self.m_crujiente.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

