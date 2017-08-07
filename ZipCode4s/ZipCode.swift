//
//  ZipCode.swift
//  DEMO
//
//  Created by Taillook on 2017/08/07.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import Foundation

open class ZipCode {
    open func find() -> Array<Array<String>> {
        return csvToArray(prefecture: "1")
    }
    
    open func csvToArray(prefecture: String) -> Array<Array<String>> {
        var csvArr: Array<Array<String>> = []
        if let csvPath = Bundle.main.path(forResource: prefecture, ofType: "csv") {
            do {
                let csvStr = try String(contentsOfFile:csvPath, encoding:String.Encoding.utf8)
                for i in csvStr.components(separatedBy: .newlines) {
                    csvArr.append(i.components(separatedBy: ","))
                }

            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
        return csvArr
    }
}
