//
//  Greenhouse.swift
//  GreenHouse
//
//  Created by Kailey Wong on 7/21/21.
//

import UIKit

class item {
    var title = ""
    var icon : UIImage
    var avoid = ""
    var rating : EIR
    
    init(name : String, img : UIImage, rate : Int){
        title = name
        icon = img
        rating = EIR(rating: rate)
    }
}


class EIR {
    var text = "LOW"
    var img = UIImage(named: "low")!
    var color = UIColor(hex: "#ADFF00")
    
    init (rating : Int){
        if (rating == 1){
            img = UIImage(named: "medium")!
            text = "MEDIUM"
            color = UIColor(hex: "#FFAA32")
        }
        else if (rating == 2){
            img = UIImage(named: "high")!
            text = "LOW"
            color = UIColor(hex: "#C3005A")
        }
    }
}

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
