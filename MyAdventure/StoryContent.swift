//
//  StoryBrain.swift
//  MyAdventure
//
//  Created by user250623 on 2/10/24.
//

import Foundation
let unknownDestination = -1

struct StoryContent {
    
    let stories = [
        Story(
            title: "Lost in the Forest: As the sun sets, you realize you've strayed far from the hiking trail and are now hopelessly lost. With night approaching, you spot a dim light through the trees.",
            choice1: "Head towards the light. It could be help.", choice1Destination: 2,
            choice2: "Stay put. Someone will come looking.", choice2Destination: 1
        ),
        Story(
            title: "Staying put seems safe, but as hours pass, the temperature drops. You're not prepared to spend the night.",
            choice1: "Try to make a fire with what you have.", choice1Destination: 3,
            choice2: "Keep waiting. Someone has to notice you're gone.", choice2Destination: 4
        ),
        Story(
            title: "As you approach the light, you find a small cabin. An old ranger answers your knock, offering shelter and a phone to call for help.",
            choice1: "Thank them and call for a ride home.", choice1Destination: 5,
            choice2: "Politely decline, fearing they might be dangerous.", choice2Destination: 4
        ),
        Story(
            title: "Your attempt at making a fire fails. The cold becomes unbearable, and you start to shiver uncontrollably.",
            choice1: "Head towards the light in search of help", choice1Destination: 2,
            choice2: "Stay where you are and hope someone finds you.", choice2Destination: 4
        ),
        Story(
            title: "The night passes slowly and no one comes. By morning, you're cold, hungry, and still lost.",
            choice1: "End", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "Safe and sound, you wait for your ride at the ranger's cabin, grateful for the kindness of strangers.",
            choice1: "End", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )

    ]

    var storyIndex = 0 // Index of current story

    func getTitle() ->String{
        return stories[storyIndex].title
    }

    func getChoice1() -> String{
        return stories[storyIndex].choice1
    }

    func getChoice2() -> String{
        return stories[storyIndex].choice2
    }

    mutating func nextStory(_ userChoice: String){
        if userChoice == stories[storyIndex].choice1 {
            storyIndex = stories[storyIndex].choice1Destination
        } else if userChoice == stories[storyIndex].choice2{
            storyIndex = stories[storyIndex].choice2Destination
        }
    }
}
