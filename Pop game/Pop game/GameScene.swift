//
//  GameScene.swift
//  Game-Starter-Empty
//
//  Created by mitchell hudson on 9/13/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit
import GameplayKit


class GameScene: SKScene {
    var score = 0
    var scoreLabel = SKLabelNode()
  
  
    override func didMove(to view: SKView) {
        // Called when the scene has been displayed
        let action = SKAction.run {
            self.createSquare()
        }
        let wait = SKAction.wait(forDuration: 1.0)
        let siki = SKAction.sequence([action, wait, action, wait])
        let sik = SKAction.repeatForever(siki)
        self.run(sik)
       
        let position = CGPoint(x: (scene?.frame.size.width)!/2, y: (scene?.frame.size.height)!/2)
        scoreLabel.position = position
        scoreLabel.fontSize = 25
        scoreLabel.color = .red
        
        addChild(scoreLabel)
        toUpdate(score: score)
    }
    
    func toUpdate(score: Int) {
        scoreLabel.text = "Score: \(score)"
    }
    
  
    override func update(_ currentTime: TimeInterval) {

    }
    func random(_ n:Int) -> Int
    {
        return Int(arc4random_uniform(UInt32(n)))
    }
    
    
    
    func createSquare(){
        let size = CGSize(width: 60, height: 60)
        let square = SKSpriteNode(texture: nil, color: .gray, size: size)
//        let square = TouchSprite(texture: nil, color: .gray, size: size)
        //square.isUserInteractionEnabled = true
        square.name = "box"
        let moveNodeUp = SKAction.moveBy(x: 0.0, y: self.size.height, duration: 10.0)
//        let moveNodeRight = SKAction.moveBy(x: 100.0, y: 0.0, duration: 1.0)
//        let moveNodeDown = SKAction.moveBy(x: 0.0, y: -100.0, duration: 1.0)
//        let moveNodeLeft = SKAction.moveBy(x: -100.0, y: 0.0, duration: 1.0)
//        let repi = SKAction.repeatForever(moveNodeUp)
        let delete = SKAction.removeFromParent()
        let seq = SKAction.sequence([moveNodeUp, delete])
//        let seq = SKAction.sequence([moveNodeUp])
        square.run(seq)
        
        let appear = SKAction.fadeIn(withDuration: 2.0)
        let disappear = SKAction.fadeOut(withDuration: 2.0)
        let seq2 = SKAction.sequence([disappear, appear])
        let repe = SKAction.repeatForever(seq2)
//        square.run(repe)
        
        let mDown = SKAction.moveBy(x: 0.0, y: -100.0, duration: 1.0)
        let scaleUp = SKAction.scale(by: 1.5, duration: 1)
        let stop = SKAction.stop()
        let mUp = SKAction.moveBy(x: 0.0, y: 100.0, duration: 1.0)
        let scaleDown = SKAction.scale(by: -1.5, duration: 1)
        let group = SKAction.group([mDown, scaleUp, stop, mUp, scaleDown])
        let repa = SKAction.repeatForever(group)
//            square.run(repa)
        
        
//        let seq = SKAction.fadeIn(withDuration: 2)
//        let seq2 = SKAction.move(to: CGPoint(x: 0, y: 50), duration: 2)
//
//        let square2 = SKSpriteNode(texture: nil, color: .blue, size: size)
//        let square3 = SKSpriteNode(texture: nil, color: .brown, size: size)
//        if let view = self.view{
//              square.position.x = view.bounds.width/2
        guard let view = self.view else {
            return
        }
        let randomPositionX = random(Int(view.bounds.width))
        let positionX = CGFloat(randomPositionX)
        square.position.x = positionX //view.bounds.width/2
//        square.position.y = view.bounds.height/2
//        square2.position.x = view.bounds.width/2 + 70
//        square2.position.y = view.bounds.height/2
//        square3.position.x = view.bounds.width/2 - 70
//        square3.position.y = view.bounds.height/2
        
        addChild(square)
//        addChild(square2)
//        addChild(square3)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            print("touch registered")
            let location = touch.location(in: self)
            let node = atPoint(location)
            if node.name == "box" {
                print("clicked box")
                node.removeFromParent()
                score += 1
                toUpdate(score: score)
            }
        }
        
    }

    
}
