//
//  infoScreen.swift
//  SupergirlFly
//
//  Created by Maya Shah, Vidushi Somani, Samhita Honnavali, Ysabel Li
//  
//


import SpriteKit

class infoScreen:  SKScene{
    var items: SKNode!
    var items2: SKNode!
    var buttonstart: MSButtonNode!

    override func didMoveToView(view: SKView) {
        
        items = self.childNodeWithName("//imagesParent") as SKNode!
        items2 = self.childNodeWithName("//itemparents2") as SKNode!
        buttonstart = self.childNodeWithName("buttonstart") as! MSButtonNode!
        displayrandomquote()
        displayrandomquote2()
        
        buttonstart.selectedHandler = {
            
            /* Grab reference to our SpriteKit view */
            let skView = self.view as SKView!
            
            /* Load Game scene */
            let scene = GameScene(fileNamed:"GameScene") as GameScene!
            
            /* Ensure correct aspect mode */
            scene.scaleMode = .AspectFill
            
            /* Restart game scene */
            skView.presentScene(scene)
        }


        //scoreinfolabel.text = String(points)
        
    }
    
    func displayrandomquote() {
        let arrayOfItems = items.children as [SKNode]
        let randomNum = Int(arc4random_uniform(UInt32(7)))
        let ranItem = arrayOfItems[randomNum]
        ranItem.hidden = false
        let name = arrayOfItems[randomNum].name
        for item in items.children {
            if item.name != name {
                item.hidden = true
            }
        }

    }
    
    func displayrandomquote2() {
        let arrayOfItems = items2.children as [SKNode]
        let randomNum = Int(arc4random_uniform(UInt32(7)))
        let ranItem = arrayOfItems[randomNum]
        ranItem.hidden = false
        let name = arrayOfItems[randomNum].name
        for item in items2.children {
            if item.name != name {
                item.hidden = true
            }
        }
        
    }

    
}