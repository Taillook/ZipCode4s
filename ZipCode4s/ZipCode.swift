//
//  ZipCode.swift
//  DEMO
//
//  Created by Taillook on 2017/08/07.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import Foundation

public class ZipCode {
    public var zipcode = ""
    public var prefecture = ""
    public var prefectureCode = ""
    public var prefectureKana = ""
    public var city = ""
    public var cityKana = ""
    public var town = ""
    public var townKana = ""

    public init(zipcode: String) {
        let data = csv2Array(prefecture: zipcode2Pref(zipcode: zipcode),zipcode: zipcode)
        self.zipcode = data[2]
        self.prefecture = data[6]
        self.prefectureKana = data[3]
        self.city = data[7]
        self.cityKana = data[4]
        self.town = data[8]
        self.townKana = data[5]
    }

    private func csv2Array(prefecture: String,zipcode: String) -> Array<String> {
        var csvArr: Array<String> = []
        guard let csvPath = Bundle(for: ZipCode.self).path(forResource: prefecture, ofType: "csv"),
            let fileHandle = FileHandle(forReadingAtPath: csvPath),
            let data = String(data: fileHandle.readDataToEndOfFile(), encoding: .utf8)
            else {
            return []
        }

        data.enumerateLines { line, stop in
            let item: [String] = line.components(separatedBy: ",")
            if (item[2] == zipcode) {
                csvArr = item
                stop = true
            }
        }

        return csvArr
    }
    
    private func zipcode2Pref(zipcode: String) -> String {
        var pref = "47"
        switch zipcode.substring(to:zipcode.index(zipcode.endIndex, offsetBy: -5)) {
            case "04": pref = "1"
            case "05": pref = "1"
            case "06": pref = "1"
            case "07": pref = "1"
            case "08": pref = "1"
            case "09": pref = "1"
            case "01": pref = "5"
            case "02": pref = "3"
            case "03": pref = "2"
            case "10": pref = "13"
            case "11": pref = "13"
            case "12": pref = "13"
            case "13": pref = "13"
            case "14": pref = "13"
            case "15": pref = "13"
            case "16": pref = "13"
            case "17": pref = "13"
            case "18": pref = "13"
            case "19": pref = "13"
            case "20": pref = "13"
            case "21": pref = "14"
            case "22": pref = "14"
            case "23": pref = "14"
            case "24": pref = "14"
            case "25": pref = "14"
            case "26": pref = "12"
            case "27": pref = "12"
            case "28": pref = "12"
            case "29": pref = "12"
            case "30": pref = "8"
            case "31": pref = "8"
            case "32": pref = "11"
            case "33": pref = "11"
            case "34": pref = "11"
            case "35": pref = "11"
            case "36": pref = "11"
            case "37": pref = "10"
            case "37": pref = "20"
            case "38": pref = "20"
            case "39": pref = "20"
            case "40": pref = "19"
            case "41": pref = "22"
            case "42": pref = "22"
            case "43": pref = "22"
            case "44": pref = "23"
            case "45": pref = "23"
            case "46": pref = "23"
            case "47": pref = "23"
            case "48": pref = "23"
            case "49": pref = "23"
            case "50": pref = "21"
            case "51": pref = "24"
            case "52": pref = "25"
            case "53": pref = "27"
            case "54": pref = "27"
            case "55": pref = "27"
            case "56": pref = "27"
            case "57": pref = "27"
            case "58": pref = "27"
            case "59": pref = "27"
            case "60": pref = "26"
            case "61": pref = "26"
            case "62": pref = "26"
            case "63": pref = "29"
            case "64": pref = "30"
            case "65": pref = "28"
            case "66": pref = "28"
            case "67": pref = "28"
            case "68": pref = "31"
            case "69": pref = "32"
            case "70": pref = "33"
            case "71": pref = "33"
            case "72": pref = "34"
            case "73": pref = "34"
            case "74": pref = "35"
            case "75": pref = "35"
            case "76": pref = "37"
            case "77": pref = "36"
            case "78": pref = "39"
            case "79": pref = "38"
            case "80": pref = "40"
            case "81": pref = "40"
            case "82": pref = "40"
            case "83": pref = "40"
            case "84": pref = "41"
            case "85": pref = "42"
            case "86": pref = "43"
            case "87": pref = "44"
            case "88": pref = "45"
            case "89": pref = "46"
            case "90": pref = "47"
            case "91": pref = "18"
            case "92": pref = "17"
            case "93": pref = "16"
            case "94": pref = "15"
            case "95": pref = "15"
            case "96": pref = "7"
            case "97": pref = "7"
            case "98": pref = "4"
            case "99": pref = "6"
            default: print(zipcode.substring(to:zipcode.index(zipcode.endIndex, offsetBy: -5)))
        }
        self.prefectureCode = pref
        return pref
    }
}
