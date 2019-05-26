//
//  ViewController.swift
//  Sadn
//
//  Created by Aditya Sanjaya on 20/05/19.
//  Copyright © 2019 Aditya. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var mainLoveButton: UIButton!
    @IBOutlet weak var mainRealityButton: UIButton!
    @IBOutlet weak var nightBackground: UIImageView!
    @IBOutlet weak var princessCircle: UIButton!
    @IBOutlet weak var heroCircle: UIButton!
    @IBOutlet weak var richCircle: UIButton!
    @IBOutlet weak var Comet1: UIButton!
    @IBOutlet weak var Comet2: UIButton!
    @IBOutlet weak var Comet3: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        openingLove()
//        fadeInRepeat(fadeObject: mainLoveButton)
        createLoveGame()
    }
    //Setting the Opening for Love Game
    func openingLove(){
        nightBackground.alpha = 0
        mainLoveButton.setImage(UIImage(named: "Heart")?.withRenderingMode(.alwaysOriginal), for: .normal)
        self.view.backgroundColor = #colorLiteral(red: 0.0431372549, green: 0.1921568627, blue: 0.4588235294, alpha: 1)
        mainLoveButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
        mainLoveButton.alpha = 0
        mainRealityButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
    }
    //Setting the Opening for Reality Game
    func openingReality(){
        nightBackground.alpha = 0
        mainRealityButton.setImage(UIImage(named: "Reality")?.withRenderingMode(.alwaysOriginal), for: .normal)
        mainLoveButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
        mainRealityButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
        self.view.backgroundColor = #colorLiteral(red: 0.0431372549, green: 0.1921568627, blue: 0.4588235294, alpha: 1)
        mainRealityButton.alpha = 0
    }
    
    //Fading in Button Function
    func fadeInRepeat(fadeObject:UIButton){
        fadeObject.alpha = 0.3
        view.addSubview(fadeObject)
        
        UIView.animate(withDuration: 0.8, delay: 0, options: [.repeat, .autoreverse], animations: {
            fadeObject.alpha = 1.0
        }, completion: nil)
    }
    
    func createLoveGame(){
        princessCircle.layer.cornerRadius = princessCircle.frame.width/2
        princessCircle.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
        heroCircle.layer.cornerRadius = princessCircle.frame.width/2
        heroCircle.layer.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.9254901961, alpha: 1)
        richCircle.layer.cornerRadius = princessCircle.frame.width/2
        richCircle.layer.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        Comet1.setImage(UIImage(named:"comet")?.withRenderingMode(.alwaysOriginal), for: .normal)
        Comet2.setImage(UIImage(named:"comet")?.withRenderingMode(.alwaysOriginal), for: .normal)
        Comet3.setImage(UIImage(named:"comet")?.withRenderingMode(.alwaysOriginal), for: .normal)
        fadeInRepeat(fadeObject: Comet1)
        fadeInRepeat(fadeObject: Comet2)
        fadeInRepeat(fadeObject: Comet3)
        movePrincess()
    }
    
    func movePrincess() {
        UIView.animate(withDuration: 4.0,
                   delay: 1.0,
                   options: [.curveEaseInOut , .repeat, .autoreverse], animations: {
                        self.princessCircle.center = CGPoint(x: 150, y: 240)
                        },
                   completion: nil
                        )
        }
    
    func moveRich() {
        UIView.animate(withDuration: 1.0,
                       delay: 0.5,
                       options: [.curveEaseOut], animations: {
                        self.richCircle.center = CGPoint(x: 354, y: 855)
        },
                       completion: nil
        )
    }

}

