//
//  ViewController.swift
//  CafeCollectionLarsen
//
//  Created by BRAEDON LARSEN on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuOutlet: UITextView!
    @IBOutlet weak var itemAddOutlet: UITextField!
    @IBOutlet weak var cartOutlet: UITextView!
    @IBOutlet weak var totalPriceOutlet: UILabel!
    
    var menu = ["Hot Dog", "Coffee", "Sandwich", "Soup", "Chips"]
    var prices = [2.5, 1.25, 4.5, 3.0, 1.5 ]
    var dict = ["Hot Dog" : 2.5, "Coffee" : 1.25, "Sandwich" : 4.5, "Soup" : 3.0, "Chips": 1.5]
    var total = 0.0
    var what = false
    override func viewDidLoad() {
        

    
    
        
        super.viewDidLoad()

        for var i in 0 ..< prices.count
        {
            menuOutlet.text += "\(menu[i]) $\(prices[i]) \n"
            print("\(menu[i]) $\(prices[i]) \n")
        }
        
    }

    

   @IBAction func cartClickButton(_ sender: Any)
      {
          var bought = itemAddOutlet.text
          var check = dict[bought!]
          
          
          for var i in 0 ..< menu.count
          {
              if (bought == menu[i])
              {
                  what = true
                  var pri = dict[bought!]
                  total += pri!
                  cartOutlet.text += "\(bought!)     $\(pri!)\n"
                  totalPriceOutlet.text = "Total: $\(total)"
                  print(total)
              }
             
          }
          if !what
        {
            totalPriceOutlet.text = "Invalid Item (check capitals)"
             what = false
         }
      }
}
