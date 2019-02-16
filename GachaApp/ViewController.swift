//
//  ViewController.swift
//  GachaApp
//
//  Created by 米山杏里 on 2018/06/17.
//  Copyright © 2018年 jp.yoneyamaanri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number = 0
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var gachaImageView: UIImageView!
    @IBOutlet weak var gachaButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImageView.image = UIImage(named: "background.jpeg")
        gachaImageView.image = nil
        gachaButton.layer.cornerRadius = gachaButton.bounds.height / 2
        gachaButton.layer.masksToBounds = true
        
        let userDefaults = UserDefaults.standard
        number = userDefaults.integer(forKey: "number")
        gachaImageView.image = UIImage(named: "number")
        print(number)
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func tapGachaButton() {
        
        number = Int(arc4random_uniform(8))
        
        if number == 0 {
             gachaImageView.image = UIImage(named:"chuubu.jpeg")
        } else if number == 1 {
            gachaImageView.image = UIImage(named: "chuugoku.jpeg")
        } else if number == 2 {
            gachaImageView.image = UIImage(named: "kantou.jpeg")
        } else if number == 3 {
            gachaImageView.image = UIImage(named: "kinki.jpeg")
        } else if number == 4 {
            gachaImageView.image = UIImage(named: "kyuusyuu.jpeg")
        } else if number == 5 {
            gachaImageView.image = UIImage(named: "okinawa.jpeg")
        } else if number == 6 {
            gachaImageView.image = UIImage(named: "shikoku.jpeg")
        } else if number == 7 {
            gachaImageView.image = UIImage(named: "touhoku.jpeg")
        } else {
            gachaImageView.image = UIImage(named: "hokkaidou.jpeg")
        }
       
        let userDefaults = UserDefaults.standard
        userDefaults.set(number, forKey: "number")
        userDefaults.synchronize()
        
        
        print(number)
        
        gachaImageView.alpha = 0.0
        UIImageView.animate(withDuration : 0.3) {
            self.gachaImageView.alpha = 1.0
        }
        
        
    }

}

