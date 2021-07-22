//
//  GardeningViewController.swift
//  GreenHouse
//
//  Created by Kailey Wong on 7/21/21.
//

import UIKit

class GardeningViewController: UIViewController {

    var item = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "plastic pot" {
            self.item = "plastic pot"
        }
        if segue.destination is GardeningItemViewController {
                let vc = segue.destination as? GardeningItemViewController
                vc?.selectedItem = self.item
           
        }
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
