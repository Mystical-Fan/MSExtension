//
//  ViewController.swift
//  MSExtension
//
//  Created by fanfan-li@outlook.com on 07/01/2019.
//  Copyright (c) 2019 fanfan-li@outlook.com. All rights reserved.
//

import UIKit
import MSExtension

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let phone:String = "13888888888"
        print(phone.isPhoneNum)
        let phone1:String = "13888"
        print(phone1.isPhoneNum)
        
        let phone2:String = "11111111111"
        print(phone2.isPhoneNum)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



