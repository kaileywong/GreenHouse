//
//  CleaningItemViewController.swift
//  GreenHouse
//
//  Created by Kailey Wong on 7/22/21.
//

import UIKit

class CleaningItemViewController: UIViewController {
    var selectedItem:String = ""

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var explanationText: UITextView!
    @IBOutlet weak var ratingText: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var ingredientsText: UITextView!
    @IBOutlet weak var alternatives: UITextView!
    
    var chemicalCleaner = item(name: "Chemical Cleaners", img: UIImage(named: "cleaning")!, rate: 1, ing: "Triclosan, 1/4-Dioxane, Nonylphenol ethoxylates, Phosphates, Phthalates, Quaternary Ammonium Compounds, Volatile Organic Compounds, Methylisothiazolinone", explain: "Chemicals that are toxic to aquatic life can damage organisms, interrupt development and reproduction, or even be lethal. Antibacterial ingredients also kill algae, the foundation of the aquatic food chain. Chemicals that are not biodegradable remain in the environment for long periods of time, causing prolonged damage to ecosystems.", alt: "• biodegradable cleaners (brands like Method, Dawn, Mrs. Meyer’s Clean Day, Seventh Generation) \n • Vinegar (buy Aunt Fannie's cleaner to avoid the pungent smell) \n • Baking Soda")
    override func viewDidLoad() {
        super.viewDidLoad()

        if selectedItem == "chemical cleaner" {
            display(item: chemicalCleaner)
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
