import SpriteKit



class GameScene: SKScene {
    var orangeTree: SKSpriteNode!
    var orange: Orange?
    var touchStart: CGPoint = .zero
    var shapeNode = SKShapeNode()
    var boundary = SKNode()
    var numOfLevels: UInt32 = 2
    
    // Class method to load .sks files
    static func Load(level: Int) -> GameScene? {
        return GameScene(fileNamed: "Level-\(level)")
    }
    
    
    override func didMove(to view: SKView) {
        orangeTree = childNode(withName: "Tree") as! SKSpriteNode
        shapeNode.lineWidth = 20
        shapeNode.lineCap = .round
        shapeNode.strokeColor = UIColor(white: 1, alpha: 0.3)
        addChild(shapeNode)
        // Set the contact delegate
        physicsWorld.contactDelegate = self
        
        // Setup the boundaries
        boundary.physicsBody = SKPhysicsBody(edgeLoopFrom: CGRect(origin: .zero, size: size))
        boundary.position = .zero
        addChild(boundary)
        
        // Add the Sun to the scene
        let sun = SKSpriteNode(imageNamed: "Sun")
        sun.name = "sun"
        sun.position.x = size.width - (sun.size.width * 0.75)
        sun.position.y = size.height - (sun.size.height * 0.75)
        addChild(sun)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        
        if atPoint(location).name == "Tree" {
            orange = Orange()
            orange?.physicsBody?.isDynamic = false
            orange?.position = location
            addChild(orange!)
            
            touchStart = location
        }
            // Check whether the sun was tapped and change the level
            for node in nodes(at: location) {
                if node.name == "sun" {
                    let n = Int(arc4random() % numOfLevels + 1)
                    if let scene = GameScene.Load(level: n) {
                        scene.scaleMode = .aspectFill
                        if let view = view {
                            view.presentScene(scene)
                        }
                    }
                }
            }
            
            
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        
        orange?.position = location
        // Draw the firing vector
        let path = UIBezierPath()
        path.move(to: touchStart)
        path.addLine(to: location)
        shapeNode.path = path.cgPath
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Get the location of where the touch ended
        let touch = touches.first!
        let location = touch.location(in: self)
        
    
        let dx = (touchStart.x - location.x) * 0.5
        let dy = (touchStart.y - location.y) * 0.5
        let vector = CGVector(dx: dx, dy: dy)
        
        // Set the Orange dynamic again and apply the vector as an impulse
        orange?.physicsBody?.isDynamic = true
        orange?.physicsBody?.applyImpulse(vector)
        
        // Remove the path from shapeNode
        shapeNode.path = nil
    }
    
}
extension GameScene: SKPhysicsContactDelegate {
    // Called when the physicsWorld detects two nodes colliding
    func didBegin(_ contact: SKPhysicsContact) {
        let nodeA = contact.bodyA.node
        let nodeB = contact.bodyB.node
        
        // Check that the bodies collided hard enough
        if contact.collisionImpulse > 15 {
            if nodeA?.name == "skull" {
                removeSkull(node: nodeA!)
            } else if nodeB?.name == "skull" {
                removeSkull(node: nodeB!)
            }
        }
    }
    
    // Function used to remove the Skull node from the scene
    func removeSkull(node: SKNode) {
        node.removeFromParent()
    }
}
