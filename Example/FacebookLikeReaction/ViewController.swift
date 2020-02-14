//
//  ViewController.swift
//  FacebookLikeReaction
//
//  Created by 11Shraddha on 02/14/2020.
//  Copyright (c) 2020 11Shraddha. All rights reserved.
//

import UIKit
import FacebookLikeReaction

class ViewController: UIViewController {
    
    var btnReaction: UIButton!
    var reactionView: ReactionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        // Create a UIButton to toggle the blinking
        btnReaction = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 30))
        btnReaction.setTitle("Long Press here", for: .normal)
        btnReaction.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(btnReaction)

        reactionView = ReactionView()
        
        let reactions: [Reaction] = [Reaction(title: "Laugh", imageName: "icn_laugh"),
                                    Reaction(title: "Like", imageName: "icn_like"),
                                    Reaction(title: "Angry", imageName: "icn_angry"),
                                    Reaction(title: "Love", imageName: "icn_love"),
                                    Reaction(title: "Sad", imageName: "icn_sad")]
        
        reactionView?.initialize(delegate: self , reactionsArray: reactions, sourceView: self.view, gestureView: btnReaction)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: - FacebookLikeReactionDelegate
extension ViewController: FacebookLikeReactionDelegate {
    
    func selectedReaction(reaction: Reaction) {
        print("Selected-------\(reaction.title)")
    }
}
