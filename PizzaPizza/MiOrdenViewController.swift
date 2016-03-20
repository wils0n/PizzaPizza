//
//  MiOrdenViewController.swift
//  PizzaPizza
//
//  Created by Wilson Mejía on 19/03/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import UIKit

class MiOrdenViewController: UIViewController {
    
    @IBOutlet weak var tamanio_elegido: UILabel!
    @IBOutlet weak var masa_elegida: UILabel!
    @IBOutlet weak var queso_elegido: UILabel!
    
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tamanio = appDelegate.tamanio
        let masa = appDelegate.masa
        let queso = appDelegate.queso
        
        if tamanio == "" {
            self.tamanio_elegido.text = "No eligio"
        }else{
            self.tamanio_elegido.text = appDelegate.tamanio
        }
        
        if masa == "" {
            self.masa_elegida.text = "No eligio"
        }else{
            self.masa_elegida.text = appDelegate.masa
        }
        
        if queso == "" {
            self.queso_elegido.text = "No eligio"
        }else{
            self.queso_elegido.text = appDelegate.queso
        }
        
        
        print("Tamanio: \(appDelegate.tamanio)")
        print("Masa: \(appDelegate.masa)")
        print("Queso: \(appDelegate.queso)")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
