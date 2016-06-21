//
//  ViewController.swift
//  FNBlingBlingLabel
//
//  Created by Fnoz on 16/5/29.
//  Copyright © 2016年 Fnoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var blingBlingLabel:FNBlingBlingLabel!
    let textArray = ["      轻轻的我走了，\n      正如我轻轻的来；\n      我轻轻的招手，\n      作别西天的云彩。",
                     "Very quietly I take my leave, \nAs quietly as I came here; \nQuietly I wave good-bye, \nTo the rosy clouds in the western sky.",
                     "      夏天的飞鸟\n      飞到我的窗前唱歌，\n      又飞去了。\n      秋天的黄叶，\n      它们没有什么可唱，\n      只叹息一声，\n      飞落在那里。",
                     "Stray birds of summer come to my window to sing and fly away.\nAnd yellow leaves of autumn, which have no songs, flutter and fall there with a sign. "];
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 42/255.0, green: 49/255.0, blue: 67/255.0, alpha: 1)
        
        blingBlingLabel = FNBlingBlingLabel.init(frame: CGRectMake(0, 0, 300, 200))
        blingBlingLabel.needAnimation = true
        blingBlingLabel.center = self.view.center
        blingBlingLabel.numberOfLines = 0
        blingBlingLabel.font = UIFont.systemFontOfSize(23)
        blingBlingLabel.textColor = UIColor.init(white: 1, alpha: 0.7)
        blingBlingLabel.userInteractionEnabled = true
        self.view.addSubview(blingBlingLabel)
        blingBlingLabel.text = textArray[(i++)%textArray.count]
        
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

