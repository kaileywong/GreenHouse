//
//  CleaningViewController.swift
//  GreenHouse
//
//  Created by Kailey Wong on 7/21/21.
//

import UIKit

class CleaningViewController: UIViewController {
    var item = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "chemical cleaner" {
            self.item = "chemical cleaner"
        }
        if segue.destination is CleaningItemViewController {
                let vc = segue.destination as? CleaningItemViewController
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
