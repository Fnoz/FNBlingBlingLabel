//
//  ViewController.swift
//  FNBlingBlingLabel
//
//  Created by Fnoz on 16/5/29.
//  Copyright © 2016年 Fnoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var blingBlingLabel:FNBlingBlingLabel?
    let textArray = ["盼望着，盼望着，东风来了，春天的脚步近了。\n一切都像刚睡醒的样子，欣欣然张开了眼。山朗润起来了，水涨起来了，太阳的脸红起来了。  ",
                     "子曰：学而时习之，不亦悦乎？有朋自远方来，不亦乐乎？人不知而不愠，不亦君子乎？\n子曰：视其所以，观其所由，察其所安，人焉叟哉！人焉叟哉！",
                     "利拉德是开拓者队的绝对核心，在场上经常能贡献逆天表现，他下赛季年薪高达2100万美元。"];
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 42/255.0, green: 49/255.0, blue: 67/255.0, alpha: 1)
        
        blingBlingLabel = FNBlingBlingLabel.init(frame: CGRectMake(0, 0, 300, 200))
        blingBlingLabel?.center = self.view.center
        blingBlingLabel?.numberOfLines = 0
        blingBlingLabel?.textColor = UIColor.whiteColor()
        blingBlingLabel?.userInteractionEnabled = true
        self.view.addSubview(blingBlingLabel!)
        blingBlingLabel?.text = textArray[(i++)%textArray.count]
        
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(ViewController.changeText))
        blingBlingLabel?.addGestureRecognizer(tap)
    }
    
    func changeText() {
        blingBlingLabel?.text = textArray[(i++)%textArray.count]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

