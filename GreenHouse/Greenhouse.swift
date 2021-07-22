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
    var ingredients = ""
    var explanation = ""
    var alternatives = ""
    
    init(name : String, img : UIImage, rate : Int, ing : String, explain : String, alt : String){
        title = name
        icon = img
        rating = EIR(rating: rate)
        ingredients = ing
        explanation = explain
        alternatives = alt
    }
}


class EIR {
    var text = "LOW"
    var img = UIImage(named: "low")!
    var color = UIColor(red: 173, green: 255, blue: 0)
    
    init (rating : Int){
        if (rating == 1){
            img = UIImage(named: "medium")!
            text = "MEDIUM"
            color = UIColor(red: 249, green: 179, blue: 30)
        }
        else if (rating == 2){
            img = UIImage(named: "high")!
            text = "LOW"
            color = UIColor(red: 195, green: 0, blue: 90)
        }
    }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
