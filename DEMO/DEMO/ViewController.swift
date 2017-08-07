//
//  ViewController.swift
//  DEMO
//
//  Created by Taillook on 2017/08/07.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let a = ZipCode()
        print(a.csvToArray(prefecture: "1")[0][6])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

