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
        let a = ZipCode(zipcode: "1500043")
        print(a.zipcode)
        print(a.prefecture)
        print(a.prefectureCode)
        print(a.prefectureKana)
        print(a.city)
        print(a.cityKana)
        print(a.town)
        print(a.townKana)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

