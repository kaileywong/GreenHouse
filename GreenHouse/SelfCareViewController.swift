//
//  SelfCareViewController.swift
//  GreenHouse
//
//  Created by Kailey Wong on 7/20/21.
//

import UIKit

class SelfCareViewController: UIViewController {
    
    var item = ""

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "sunscreen" {
            self.item = "sunscreen"
        }
        if segue.destination is ItemViewController {
           
                let vc = segue.destination as? ItemViewController
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
