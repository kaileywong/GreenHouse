//
//  ItemViewController.swift
//  GreenHouse
//
//  Created by Kailey Wong on 7/21/21.
//

import UIKit

class ItemViewController: UIViewController {
    
    var selectedItem:String = ""
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var explanationText: UITextView!
    @IBOutlet weak var ratingText: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var ingredientsText: UITextView!
    @IBOutlet weak var alternatives: UITextView!
    
    var sunscreen = item(name: "Sunscreen", img: UIImage(named: "sunscreen")!, rate: 1, ing: "Oxybenzone, Octinoxate, Homosalate, Octisalate, Octocrylene, Avobenzone, Titanium dioxide, Zinc oxide", explain: "Many sunscreens contain ingredients that are harmful to both humans and wildlife.", alt: "• Thinksport SPF 50 Sunscreen \n • Kinfield Daily Dew SPF 35 \n • Raw Elements SPF 30 Certified Natural Sunscreen \n • Hello Bello Sunscreen Lotion \n • Art of Sport Skin Armor Sunscreen Lotion \n • Babo Botanicals SPF 30 Clear Zinc Lotion")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selectedItem == "sunscreen" {
            display(item: sunscreen)
        }
        
//        display(item: sunscreen)

        // Do any additional setup after loading the view.
    }
    
    func display(item : item) {
        itemName.text = item.title
        iconImage.image = item.icon
        ratingText.text = item.rating.text
        ratingText.textColor = item.rating.color
        ratingImage.image = item.rating.img
        ingredientsText.text = item.ingredients
        explanationText.text = item.explanation
        alternatives.text = item.alternatives
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
