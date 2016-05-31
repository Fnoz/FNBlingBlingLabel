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
    let textArray = ["轻轻的我走了，正如我轻轻的来；\n我轻轻的招手，作别西天的云彩。",
                     "Very quietly I take my leave, As quietly as I came here; \nQuietly I wave good-bye, To the rosy clouds in the western sky.",
                     "Douce et légère est ma démarche\nTout comme mon arrivée, légère\nMa main salue gentiment\nPour prendre congé des brumes de l’ouest."];
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 42/255.0, green: 49/255.0, blue: 67/255.0, alpha: 1)
        
        blingBlingLabel = FNBlingBlingLabel.init(frame: CGRectMake(0, 0, 300, 200))
        blingBlingLabel?.needAnimation = true
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

