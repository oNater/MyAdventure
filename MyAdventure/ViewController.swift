//
//  ViewController.swift
//  MyAdventure
//
//  Created by user250623 on 2/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyContent = StoryContent()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyContent.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyContent.getTitle()
        choice1Button.setTitle(storyContent.getChoice1(), for: UIControl.State.normal)
        choice2Button.setTitle(storyContent.getChoice2(), for: UIControl.State.normal)
    }
    
}
