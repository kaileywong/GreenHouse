//
//  ItemViewController.swift
//  GreenHouse
//
//  Created by Kailey Wong on 7/21/21.
//

import UIKit

class SelfCareItemViewController: UIViewController {
    
    var selectedItem:String = ""
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var explanationText: UITextView!
    @IBOutlet weak var ratingText: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var ingredientsText: UITextView!
    @IBOutlet weak var alternatives: UITextView!
    
    
    var sunscreen = item(name: "Sunscreen", img: UIImage(named: "sunscreen")!, rate: 1, ing: "Oxybenzone, Octinoxate, Homosalate, Octisalate, Octocrylene, Avobenzone, Titanium dioxide, Zinc oxide", explain: "Many sunscreens contain ingredients that are harmful to both humans and wildlife. After you swim or wash off sunscreen, it ends up in the ocean or waterways. Common sunscreen ingredients are harmful to the coral reefs and sea creatures that inhabit these bodies of water.", alt: " • Thinksport SPF 50 Sunscreen \n • Kinfield Daily Dew SPF 35 \n • Raw Elements SPF 30 Certified Natural Sunscreen \n • Hello Bello Sunscreen Lotion \n • Art of Sport Skin Armor Sunscreen Lotion \n • Babo Botanicals SPF 30 Clear Zinc Lotion")
    
    var makeup = item(name: "Makeup", img: UIImage(named: "cosmetics")!, rate: 1, ing: "parabens, fragrance, triclosan, sodium laureth sulfate, petroleum distillates, lead, phthalates, palm oil", explain: "Products from many popular makeup brands contain toxic ingredients which are harmful to both humans and wildlife when washed off. Palm oil, which is used in many makeup products, is causing widespread deforestation and the extinction of many animal species. Additionally, most makeup products are created in foreign countries, and when they are transported, a large carbon footprint is formed.", alt: " • purchase cosmetics from local companies \n • Axiology (U.S.) \n • Unearth Malee (U.S.) \n • Sugar Venom (Australian) \n • Odylique (U.K.)")
    
    var wash = item(name: "Face & Body Wash", img: UIImage(named: "cleanser")!, rate: 0, ing: "microbeads (polyethylene and polypropylene)", explain: "Most waterway treatment equipment can’t filter microbeads, and they make their way into bodies of water when treated waterway is released into them. They don’t easily degrade, and they could even make their way in drinking water.", alt: "Scrubs: whole oats, jojoba beads, salt, coffee, sugar \n Brands: Glossier, Simple, Lush, Innisfree, Origins")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selectedItem == "sunscreen" {
            display(item: sunscreen)
        }
        if selectedItem == "makeup" {
            display(item: makeup)
        }
        if selectedItem == "wash" {
            display(item: wash)
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
