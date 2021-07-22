//
//  LifestyleItemViewController.swift
//  GreenHouse
//
//  Created by Kailey Wong on 7/22/21.
//

import UIKit

class LifestyleItemViewController: UIViewController {

    var selectedItem:String = ""

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var explanationText: UITextView!
    @IBOutlet weak var ratingText: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var ingredientsText: UITextView!
    @IBOutlet weak var alternatives: UITextView!
    
    var clothing = item(name: "Clothing", img: UIImage(named: "tshirt")!, rate: 2, ing: "Chlorine bleach, formaldehyde, VOCs (volatile organic compounds), PFCs (perfluorinated chemicals), ammonia", explain: "Fashion production is 10% of the world’s carbon emissions and pollutes rivers and streams, and 85% of all textiles go to the dump every year. The Fashion industry is second-largest consumer of water worldwide.", alt: "• Avoid buying low-quality trendy clothes that will be thrown out after a few uses \n • Buy from more ethical and sustainable clothing brands (Reformation, Patagonia, etc) \n • Buy second-hand clothing \n • Go thrifting")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selectedItem == "clothing" {
            display(item: clothing)
        }

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
