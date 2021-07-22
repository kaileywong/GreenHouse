//
//  GardeningItemViewController.swift
//  GreenHouse
//
//  Created by Kailey Wong on 7/22/21.
//

import UIKit

class GardeningItemViewController: UIViewController {
    var selectedItem:String = ""

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var explanationText: UITextView!
    @IBOutlet weak var ratingText: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var ingredientsText: UITextView!
    @IBOutlet weak var alternatives: UITextView!
    
    var plasticPot = item(name: "Plastic Pots", img: UIImage(named: "plants")!, rate: 1, ing: "Harmful plastics such as #3 PVC, #6 PS, and #7 polycarbonate", explain: "Toxic plastics that sit in landfills (like those in common plastic pots) increase pollution and harms local soils, ecosystems and entire communities. It takes many thousands of years for one plastic planter to break down and decompose all the way.", alt: " • BioPots \n • CowPots \n • DOT pot \n • EcoForms \n • anything made of biodegradable material")
    override func viewDidLoad() {
        super.viewDidLoad()

        if selectedItem == "plastic pot" {
            display(item: plasticPot)
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
