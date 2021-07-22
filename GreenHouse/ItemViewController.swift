//
//  ItemViewController.swift
//  GreenHouse
//
//  Created by Kailey Wong on 7/21/21.
//

import UIKit

class ItemViewController: UIViewController {
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var ratingText: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    
    var sunscreen = item(name: "Sunscreen", img: UIImage(named: "sunscreen")!, rate: 1)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        display()
        // Do any additional setup after loading the view.
    }
    
    func display() {
        itemName.text = sunscreen.title
        iconImage.image = sunscreen.icon
        ratingText.text = sunscreen.rating.text
        ratingText.textColor = UIColor.orange
        ratingImage.image = sunscreen.rating.img
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
