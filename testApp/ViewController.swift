//
//  ViewController.swift
//  testApp
//
//  Created by Anantha Krishnan K G on 15/11/16.
//  Copyright © 2016 Ananth. All rights reserved.
//

import UIKit
import KGHorizontalLoader
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    //
    }
    @IBOutlet var ff: KGHorizontalLoader!
    var gg:Bool = false
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dsfsd(_ sender: AnyObject) {
        if !gg{
            gg = true
            ff.startAnimation()
        }else{
            gg = false
            ff.stopAnimation()
        }
        
    }
    
}

