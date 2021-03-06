//
//  FoodDrinkItemViewController.swift
//  GreenHouse
//
//  Created by Kailey Wong on 7/21/21.
//

import UIKit

class FoodDrinkItemViewController: UIViewController {
    var selectedItem:String = ""

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var explanationText: UITextView!
    @IBOutlet weak var ratingText: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var ingredientsText: UITextView!
    @IBOutlet weak var alternatives: UITextView!
    
    var takeout = item(name: "Takeout Container", img: UIImage(named: "box")!, rate: 2, ing: "artificial packaging: aluminum containers/wrap, styrofoam, cardboard container, paper bag, paper napkins, plastic containers", explain: "Takeout containers are commonly made from plastics, which account for a significant portion of greenhouse gas emissions and negatively impact marine wildlife. Styrofoams, another common container type, break down into harmful chemicals that stay in soil and water for centuries. Producing other common materials like paper, cardboard, and aluminum expend vaulable resources and emit greenhouse gases.", alt: "Although this is not a consumer issue, you could help by reducing food takeout. \n Additionally, you could bring containers with you every time you eat out, so you don’t have to ask restaurants for artificial packaging.")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selectedItem == "takeout" {
            display(item: takeout)
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
