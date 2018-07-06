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
        let start = Date()
        let addrInfo = ZipCode(zipcode: "1500043")
        print(addrInfo.zipcode)
        print(addrInfo.prefecture)
        print(addrInfo.prefectureCode)
        print(addrInfo.prefectureKana)
        print(addrInfo.city)
        print(addrInfo.cityKana)
        print(addrInfo.town)
        print(addrInfo.townKana)
        let elapsed = Date().timeIntervalSince(start)
        print(elapsed)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

