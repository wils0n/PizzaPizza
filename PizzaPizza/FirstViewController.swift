//
//  FirstViewController.swift
//  PizzaPizza
//
//  Created by Wilson Mejía on 19/03/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBOutlet weak var t_chicha: UIButton!
    @IBOutlet weak var t_mediana: UIButton!
    @IBOutlet weak var t_grande: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tamanio = appDelegate.tamanio
        
        if tamanio == "" {
            self.t_chicha.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
            self.t_mediana.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
            self.t_grande.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
        }else{
            if tamanio == "chica" {
                self.t_chicha.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
            }else if tamanio == "mediana" {
                self.t_mediana.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
            }else if tamanio == "grande" {
                self.t_grande.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
            }
        }
        
    }

    
    @IBAction func eligioChica(sender: AnyObject) {
        self.t_chicha.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
        appDelegate.tamanio = "chica"
        
        self.t_mediana.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
        self.t_grande.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
    }
    
    @IBAction func eligioMediana(sender: AnyObject) {
        self.t_mediana.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
        appDelegate.tamanio = "mediana"
        
        self.t_chicha.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
        self.t_grande.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
    }
    
    @IBAction func eligioGrande(sender: AnyObject) {
        self.t_grande.setImage(UIImage(named: "radio_b.png"), forState: UIControlState.Normal)
                appDelegate.tamanio = "grande"
        
        self.t_chicha.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
        self.t_mediana.setImage(UIImage(named: "radio_a.png"), forState: UIControlState.Normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

