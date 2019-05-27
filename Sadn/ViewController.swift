//
//  ViewController.swift
//  Sadn
//
//  Created by Aditya Sanjaya on 20/05/19.
//  Copyright © 2019 Aditya. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var mainLoveButton: UIButton!
    @IBOutlet weak var mainRealityButton: UIButton!
    @IBOutlet weak var nightBackground: UIImageView!
    @IBOutlet weak var castleBackground: UIImageView!
    @IBOutlet weak var princessCircle: UIButton!
    @IBOutlet weak var heroCircle: UIButton!
    @IBOutlet weak var richCircle: UIButton!
    @IBOutlet weak var upButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    @IBOutlet weak var Comet1: UIButton!
    @IBOutlet weak var Comet2: UIButton!
    @IBOutlet weak var Comet3: UIButton!
    @IBOutlet weak var transparantBackground: UIView!
    @IBOutlet weak var rejectedButton: UIButton!
    @IBOutlet weak var allFakeButton: UIButton!
    @IBOutlet weak var rock1: UIButton!
    @IBOutlet weak var rock2: UIButton!
    @IBOutlet weak var rock3: UIButton!
    @IBOutlet weak var rock4: UIButton!
    @IBOutlet weak var rock5: UIButton!
    @IBOutlet weak var rock6: UIButton!
    @IBOutlet weak var rock7: UIButton!
    @IBOutlet weak var rock8: UIButton!
    @IBOutlet weak var rock9: UIButton!
    @IBOutlet weak var rock10: UIButton!
    @IBOutlet weak var rock11: UIButton!
    @IBOutlet weak var rock12: UIButton!
    @IBOutlet weak var rock13: UIButton!
    @IBOutlet weak var rock14: UIButton!
    @IBOutlet weak var rock15: UIButton!
    @IBOutlet weak var rock16: UIButton!
    @IBOutlet weak var rock17: UIButton!
    @IBOutlet weak var rock18: UIButton!
    var counter : Int = 0
    var pop : Int = 0
    var AudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //The Game view will be put here
        openingLove()
        playBackgroundMusic()
    }
    
    func playCrushingRock(){
        let crushingRock = NSURL(fileURLWithPath: Bundle.main.path(forResource: "crushingRock", ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: crushingRock as URL)
        AudioPlayer.prepareToPlay()
        AudioPlayer.play()
    }
    
    func playBackgroundMusic(){
        let backgroundMusic = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Rain_Heavy_Loud", ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: backgroundMusic as URL)
        AudioPlayer.prepareToPlay()
        AudioPlayer.numberOfLoops = -1
        AudioPlayer.play()
    }
    
    func playJumpSound(){
        let jumpSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "jumping", ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: jumpSound as URL)
        AudioPlayer.prepareToPlay()
        AudioPlayer.play()
    }
    
    @IBAction func mainLoveActionButton(_ sender: Any) {
        createLoveGame()
    }
    
    @IBAction func mainRealityActionButton(_ sender: Any) {
        createRealityGame()
    }
    
    //Setting the Opening for Love Game
    func openingLove(){
        allFakeButton.alpha = 0
        allFakeButton.layer .removeAllAnimations()
        rejectedButton.alpha = 0
        nightBackground.alpha = 0
        castleBackground.alpha = 0
        mainLoveButton.setImage(UIImage(named: "Heart")?.withRenderingMode(.alwaysOriginal), for: .normal)
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        mainLoveButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
        mainLoveButton.alpha = 0
        mainRealityButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
        fadeInRepeat(fadeObject: mainLoveButton)
    }
    
    //Setting the Opening for Reality Game
    func openingReality(){
        Comet1.alpha = 0
        Comet2.alpha = 0
        Comet3.alpha = 0
        heroCircle.alpha = 0
        rejectedButton.layer .removeAllAnimations()
        Comet1.layer .removeAllAnimations()
        Comet2.layer .removeAllAnimations()
        Comet3.layer .removeAllAnimations()
        richCircle.alpha = 0
        princessCircle.alpha = 0
        castleBackground.alpha = 0
        rejectedButton.alpha = 0
        transparantBackground.alpha = 0
        nightBackground.alpha = 0
        mainRealityButton.setImage(UIImage(named: "Reality")?.withRenderingMode(.alwaysOriginal), for: .normal)
        mainLoveButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
        mainRealityButton.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 0)
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        mainRealityButton.alpha = 0
        fadeInRepeat(fadeObject: mainRealityButton)
    }
    
    //Fading in Button Function
    func fadeInRepeat(fadeObject:UIButton){
        fadeObject.alpha = 0.3
        view.addSubview(fadeObject)
        
        UIView.animate(withDuration: 0.8, delay: 0, options: [.repeat, .autoreverse, .allowUserInteraction], animations: {
            fadeObject.alpha = 1.0
        }, completion: nil)
    }
    
    //Creating the environment of Love Game
    func createLoveGame(){
        heroCircle.alpha = 1
        princessCircle.alpha = 1
        richCircle.alpha = 1
        rock1.alpha = 0
        rock2.alpha = 0
        rock3.alpha = 0
        rock4.alpha = 0
        rock5.alpha = 0
        rock6.alpha = 0
        rock7.alpha = 0
        rock8.alpha = 0
        rock9.alpha = 0
        rock10.alpha = 0
        rock11.alpha = 0
        rock12.alpha = 0
        rock13.alpha = 0
        rock14.alpha = 0
        rock15.alpha = 0
        rock16.alpha = 0
        rock17.alpha = 0
        rock18.alpha = 0
        mainLoveButton.layer .removeAllAnimations()
        mainLoveButton.alpha = 0
        nightBackground.alpha = 1
        castleBackground.alpha = 1
        princessCircle.layer.cornerRadius = princessCircle.frame.width/2
        princessCircle.layer.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
        heroCircle.layer.cornerRadius = princessCircle.frame.width/2
        heroCircle.layer.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.9254901961, alpha: 1)
        richCircle.layer.cornerRadius = princessCircle.frame.width/2
        richCircle.layer.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        Comet1.setImage(UIImage(named:"comet")?.withRenderingMode(.alwaysOriginal), for: .normal)
        Comet2.setImage(UIImage(named:"comet")?.withRenderingMode(.alwaysOriginal), for: .normal)
        Comet3.setImage(UIImage(named:"comet")?.withRenderingMode(.alwaysOriginal), for: .normal)
        upButton.setImage(UIImage(named:"upButton")?.withRenderingMode(.alwaysOriginal), for: .normal)
        downButton.setImage(UIImage(named:"downButton")?.withRenderingMode(.alwaysOriginal), for: .normal)
        fadeInRepeat(fadeObject: Comet1)
        fadeInRepeat(fadeObject: Comet2)
        fadeInRepeat(fadeObject: Comet3)
        fadeInRepeat(fadeObject: upButton)
        fadeInRepeat(fadeObject: downButton)
        movePrincess()
    }
    
    //Creating the princess movement while waiting
    func movePrincess() {
        UIView.animate(withDuration: 4.0, delay: 1.0, options: [.curveEaseInOut, .repeat, .autoreverse], animations: {
            self.princessCircle.center = CGPoint(x: 150, y: 240)
        }, completion: nil)
    }
    
    //Creating the rich entry movement
    func moveEntryRich() {
        UIView.animate(withDuration: 3.0, delay: 4.0, options: [.curveEaseOut], animations: {
            self.richCircle.center = CGPoint(x: 354, y: 855)
        }, completion: nil)
    }
    
    //Creating Princess Avoid Hero
    func avoidHero(){
        UIButton.animate(withDuration: 3.0, delay: 4.0, animations: {            self.princessCircle.center = CGPoint(x: 354, y: 240)
        }, completion: nil)
    }
    
    //Creating Jumping Princess
    func jumpPrincess(){
        UIButton.animate(withDuration: 4.0, delay: 6.0, animations: {
            self.heroCircle.center = CGPoint(x: 254, y: 240)
            self.princessCircle.center = CGPoint(x: 354, y: 855)
        }, completion: nil)
    }
    
    //Creating Princess and Rich Go Out
    func goOutRichPrincess(){
        UIButton.animate(withDuration: 5.0, delay: 10.0, options: .curveEaseInOut, animations: {
            self.princessCircle.center = CGPoint(x: 500, y: 815)
            self.richCircle.center = CGPoint(x: 500, y: 815)
        }, completion: nil)
    }
    
    //Creating the hero jumping or downing movement action
    func jumpHero(){
        UIView.animate(withDuration: 0.5, animations: {
            self.heroCircle.frame.origin.y -= 50
        })
    }
    func downHero(){
        UIView.animate(withDuration: 0.5, animations: {
            self.heroCircle.frame.origin.y += 50
        })
    }
    
    func rejected(){
        rejectedButton.setImage(UIImage(named: "rejected")?.withRenderingMode(.alwaysOriginal), for: .normal)
        rejectedButton.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        transparantBackground.alpha = 0.4
        rejectedButton.alpha = 1
        fadeInRepeat(fadeObject: rejectedButton)
    }
    
    //Go Up Button
    @IBAction func upActionButton(_ sender: Any) {
        jumpHero()
        playJumpSound()
        counter += 1
        print(counter)
        if counter == 12{
            endingLoveGame()
            playBackgroundMusic()
        }
    }
    
    //Go Down Button
    @IBAction func downActionButton(_ sender: Any) {
        downHero()
        playJumpSound()
        counter -= 1
        print(counter)
        if counter == 12{
            endingLoveGame()
            playBackgroundMusic()
        }
    }
    
    @IBAction func rejectedActionButton(_ sender: Any) {
        openingReality()
        playBackgroundMusic()
    }
    
    @IBAction func allFakeActionButton(_ sender: Any) {
        allFakeButton.layer .removeAllAnimations()
        allFakeButton.alpha = 0
        playBackgroundMusic()
    }
    
    
    //Creating Ending of Love Game
    func endingLoveGame(){
        upButton.layer .removeAllAnimations()
        upButton.alpha = 0
        downButton.layer .removeAllAnimations()
        downButton.alpha = 0
        princessCircle.layer .removeAllAnimations()
        UIView.animate(withDuration: 2.0, delay: 2.0,animations: {
            self.heroCircle.center = CGPoint(x: 150, y: 240)
            self.princessCircle.center = CGPoint(x: 264, y: 240)
        }, completion: nil)
        moveEntryRich()
        avoidHero()
        jumpPrincess()
        goOutRichPrincess()
        rejected()
    }
    
    func createRock(rockObject:UIButton){
        rockObject.layer.cornerRadius = rockObject.frame.width/2
        rockObject.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func rockDisappear(rockButton:UIButton){
        rockButton.layer .removeAllAnimations()
        UIView.animate(withDuration: 1.0, animations: {
            rockButton.alpha = 0
            }, completion: nil)
    }
    
    func createRealityGame(){
        mainRealityButton.layer .removeAllAnimations()
        mainRealityButton.alpha = 0
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        rock1.alpha = 1
        rock2.alpha = 1
        rock3.alpha = 1
        rock4.alpha = 1
        rock5.alpha = 1
        rock6.alpha = 1
        rock7.alpha = 1
        rock8.alpha = 1
        rock9.alpha = 1
        rock10.alpha = 1
        rock11.alpha = 1
        rock12.alpha = 1
        rock13.alpha = 1
        rock14.alpha = 1
        rock15.alpha = 1
        rock16.alpha = 1
        rock17.alpha = 1
        rock18.alpha = 1
        createRock(rockObject: rock1)
        createRock(rockObject: rock2)
        createRock(rockObject: rock3)
        createRock(rockObject: rock4)
        createRock(rockObject: rock5)
        createRock(rockObject: rock6)
        createRock(rockObject: rock7)
        createRock(rockObject: rock8)
        createRock(rockObject: rock9)
        createRock(rockObject: rock10)
        createRock(rockObject: rock11)
        createRock(rockObject: rock12)
        createRock(rockObject: rock13)
        createRock(rockObject: rock14)
        createRock(rockObject: rock15)
        createRock(rockObject: rock16)
        createRock(rockObject: rock17)
        createRock(rockObject: rock18)
        fadeInRepeat(fadeObject: rock1)
        fadeInRepeat(fadeObject: rock2)
        fadeInRepeat(fadeObject: rock3)
        fadeInRepeat(fadeObject: rock4)
        fadeInRepeat(fadeObject: rock5)
        fadeInRepeat(fadeObject: rock6)
        fadeInRepeat(fadeObject: rock7)
        fadeInRepeat(fadeObject: rock8)
        fadeInRepeat(fadeObject: rock9)
        fadeInRepeat(fadeObject: rock10)
        fadeInRepeat(fadeObject: rock11)
        fadeInRepeat(fadeObject: rock12)
        fadeInRepeat(fadeObject: rock13)
        fadeInRepeat(fadeObject: rock14)
        fadeInRepeat(fadeObject: rock15)
        fadeInRepeat(fadeObject: rock16)
        fadeInRepeat(fadeObject: rock17)
        fadeInRepeat(fadeObject: rock18)
    }
    
    func endingRealityGame(){
        allFakeButton.setImage(UIImage(named: "allFake")?.withRenderingMode(.alwaysOriginal), for: .normal)
        allFakeButton.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        transparantBackground.alpha = 0.4
        allFakeButton.alpha = 1
        fadeInRepeat(fadeObject: allFakeButton)
    }

    @IBAction func rock1Action(_ sender: Any) {
        rockDisappear(rockButton: rock1)
        pop += 1
        playCrushingRock()
        print(pop)
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock2Action(_ sender: Any) {
        rockDisappear(rockButton: rock2)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock3Action(_ sender: Any) {
        rockDisappear(rockButton: rock3)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock4Action(_ sender: Any) {
        rockDisappear(rockButton: rock4)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock5Action(_ sender: Any) {
        rockDisappear(rockButton: rock5)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock6Action(_ sender: Any) {
        rockDisappear(rockButton: rock6)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock7Action(_ sender: Any) {
        rockDisappear(rockButton: rock7)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock8Action(_ sender: Any) {
        rockDisappear(rockButton: rock8)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock9Action(_ sender: Any) {
        rockDisappear(rockButton: rock9)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock10Action(_ sender: Any) {
        rockDisappear(rockButton: rock10)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock11Action(_ sender: Any) {
        rockDisappear(rockButton: rock11)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock12Action(_ sender: Any) {
        rockDisappear(rockButton: rock12)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock13Action(_ sender: Any) {
        rockDisappear(rockButton: rock13)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock14Action(_ sender: Any) {
        rockDisappear(rockButton: rock14)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock15Action(_ sender: Any) {
        rockDisappear(rockButton: rock15)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock16Action(_ sender: Any) {
        rockDisappear(rockButton: rock16)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock17Action(_ sender: Any) {
        rockDisappear(rockButton: rock17)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    @IBAction func rock18Action(_ sender: Any) {
        rockDisappear(rockButton: rock18)
        pop += 1
        print(pop)
        playCrushingRock()
        if pop == 18{
            endingRealityGame()
        }
    }
    
    
}

