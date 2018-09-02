//
//  ViewController.swift
//  TestDemo
//
//  Created by Jigar Jarsania on 5/23/18.
//  Copyright © 2018 Sneha Jarsania. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getSumOf (a:Int,b:Int,handler:((Int)->Void)){
        let sum = a + b
        print(sum)
        handler(sum)
    }
}

