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
    
    var takeout = item(name: "Takeout Container", img: UIImage(named: "box")!, rate: 2, ing: "", explain: "", alt: "")

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
