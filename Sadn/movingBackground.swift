//
//  movingBackground.swift
//  Sadn
//
//  Created by Aditya Sanjaya on 26/05/19.
//  Copyright © 2019 Aditya. All rights reserved.
//

import SpriteKit

class GameScene: SKScene{
    
    var background = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        createBackgrounds()
    }
    
    override func update(_ currentTime: CFTimeInterval){
        moveBackgrounds()
    }
    
    func createBackgrounds(){
        
        for i in 0...3{
            let background = SKSpriteNode(imageNamed: "nightBackground")
            background.name = "Night"
            background.size = CGSize(width: ((self.scene?.size.width)!), height: 600)
            background.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            background.position = CGPoint(x: CGFloat(i) * background.size.width, y: -(self.frame.size.height/2))
            
            self.addChild(background)
        }
    }
    
    func moveBackgrounds(){
        self.enumerateChildNodes(withName: "Night", using: ({
            (node, error) in
            
            node.position.x -= 2
            
            if node.position.x < -((self.scene?.size.width)!) {
                
                node.position.x += (self.scene?.size.width)! * 3
            }
        }))
}
}
