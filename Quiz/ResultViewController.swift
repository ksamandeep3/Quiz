//
//  ResultViewController.swift
//  Quiz
//
//  Created by MacStudent on 2019-11-14.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var result = 0
    @IBOutlet weak var retryBtn: UIButton!
    @IBOutlet weak var resText: UILabel!
    
    @IBOutlet weak var score: UILabel!
    @IBAction func retryPress(_ sender: Any) {
        
        // retry karn lai push odo e kam karuga jdo dono te navigation controller lagya houga
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "IOsQuizViewController") as? IOsQuizViewController {
                                     // viewController.keyBoolean = selectedItem
                          //vc.result = resCOUNT
                                     if let navi = navigationController {
                                         navi.pushViewController(vc, animated: true)
                                     }
                                 }
        
    }
    @IBOutlet weak var performText: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //result view te back button nu hide karn lai
       navigationItem.setHidesBackButton(true, animated: false)
        resText.text = String(result) + "/5"
        
        if result == 0 {
             score.text = "0"
            performText.text = "Please try again!"
        } else if result == 1 {
             score.text = "10"
            performText.text = "Please try again!"
        }else if result == 2 {
             score.text = "20"
            performText.text = "Please try again!"
        }
        
        if(result == 3){
          
             performText.text = "Good job!"
             score.text = "65"
        }
        if(result == 4){
             score.text = "80"
                   performText.text = "Excellent work!"
              }
        if(result == 5){
                   performText.text = "You are a genius!"
            score.text = "100"
              }
       
    }
    
    
    
}
