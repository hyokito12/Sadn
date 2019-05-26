//
//  ViewController.swift
//  Sadn
//
//  Created by Aditya Sanjaya on 20/05/19.
//  Copyright © 2019 Aditya. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var game = "loveGame"
    @IBOutlet weak var mainLoveButton: UIButton!
    @IBOutlet weak var mainRealityButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        openingLove()
        fadeInRepeat(fadeObject: mainLoveButton)
        
    }
    //Setting the Opening for Love Game
    func openingLove(){
        mainLoveButton.setImage(UIImage(named: "Heart")?.withRenderingMode(.alwaysOriginal), for: .normal)
        self.view.backgroundColor = #colorLiteral(red: 0.1215686275, green: 0.1215686275, blue: 0.1607843137, alpha: 1)
        mainLoveButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
        mainLoveButton.alpha = 0
        mainRealityButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
        print(game)
    }
    //Setting the Opening for Reality Game
    func openingReality(){
        mainRealityButton.setImage(UIImage(named: "Reality")?.withRenderingMode(.alwaysOriginal), for: .normal)
        mainLoveButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
        mainRealityButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
        self.view.backgroundColor = #colorLiteral(red: 0.1215686275, green: 0.1215686275, blue: 0.1607843137, alpha: 1)
        mainRealityButton.alpha = 0
        print(game)
    }
    
    //Fading in Button Function
    func fadeInRepeat(fadeObject:UIButton){
        fadeObject.alpha = 0.5
        view.addSubview(fadeObject)
        
        UIView.animate(withDuration: 0.8, delay: 0, options: [.repeat, .autoreverse], animations: {
            fadeObject.alpha = 2.0
        }, completion: nil)
    }

}

