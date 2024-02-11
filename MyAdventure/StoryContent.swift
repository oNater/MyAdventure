//
//  StoryBrain.swift
//  MyAdventure
//
//  Created by user250623 on 2/10/24.
//

import Foundation
let unknownDestination = -1

struct StoryBrain {
    
    let stories = [
        Story(
            title: "You're walking home at night when a sudden downpour begins. Seeking shelter, you stumble upon an old, unmarked train station. The next train is headed to an unknown destination.",
            choice1: "Board the train. Adventure awaits!", choice1Destination: 2,
            choice2: "Wait out the storm. It's safer here.", choice2Destination: 1
        ),
        Story(
            title: "The storm intensifies, but the station starts to feel eerie. You notice the schedule hasn’t been updated in years.",
            choice1: "Maybe I should take my chances on the train...", choice1Destination: 2,
            choice2: "No, I must stay. The storm will pass.", choice2Destination: 3
        ),
        Story(
            title: "The train is oddly luxurious and quiet. You meet the conductor, who offers you two tickets; one leads to 'Yesterday', the other to 'Tomorrow'.",
            choice1: "Take me to 'Yesterday'. I long for the past.", choice1Destination: 4,
            choice2: "I choose 'Tomorrow'. It's time to move forward.", choice2Destination: 5
        ),
        Story(
            title: "The station becomes cold and the lights flicker. You’re not alone; whispers tell tales of a ghost train. The air grows colder as the night deepens.",
            choice1: "I must confront the whispers.", choice1Destination: 6,
            choice2: "I should never have left home...", choice2Destination: 0
        ),
        Story(
            title: "You arrive at 'Yesterday', finding yourself in your old hometown. It's the day before a regretful event. You have a chance to make things right.",
            choice1: "Prevent the regretful event.", choice1Destination: 7,
            choice2: "Observe, but don't interfere. The past is delicate.", choice2Destination: 8
        ),
        Story(
            title: "Tomorrow brings you to a utopia, but you're offered a job: maintain the utopia by doing tasks that challenge your morals.",
            choice1: "Accept. Utopia must be preserved at all costs.", choice1Destination: 9,
            choice2: "Decline. This isn't the future I seek.", choice2Destination: 10
        ),
        Story(
            title: "The whispers were of souls trapped in limbo, unable to board the ghost train. They're harmless and yearn for company.",
            choice1: "Stay and keep them company. They need me.", choice1Destination: 0,
            choice2: "Find a way to free them. Everyone deserves peace.", choice2Destination: 11
        ),
        Story(
            title: "You avert the event, but as you return to the present, you realize your life has changed. New memories flood in. Is this better?",
            choice1: "This is my new reality. I must live it.", choice1Destination: 0,
            choice2: "Try to return and undo this change.", choice2Destination: 2
        ),
        Story(
            title: "You watch as history unfolds. The event occurs, but with new insight, you understand its necessity in your life's tapestry.",
            choice1: "Embrace the life lessons learned.", choice1Destination: 0,
            choice2: "Go back and choose 'Tomorrow' instead.", choice2Destination: 5
        ),
        Story(
            title: "Utopia is kept afloat by your actions. But with each task, you feel a piece of yourself fade. Is this the cost of perfection?",
            choice1: "Endure. The greater good requires sacrifice.", choice1Destination: 0,
            choice2: "Flee. Find a new future where I can be true to myself.", choice2Destination: 10
        ),
        Story(
            title: "You reject the offer and the utopia crumbles. The reality behind the facade is grim. People are now free but at what cost?",
            choice1: "Help rebuild a more honest society.", choice1Destination: 0,
            choice2: "Leave. This is not the place for me.", choice2Destination: 2
        ),
        Story(
            title: "Using an ancient ritual, you release the souls. The station brightens, and a true ghost train arrives to thank you. It offers a ride to any time or place.",
            choice1: "I’ve done my part. Take me home.", choice1Destination: 0,
            choice2: "I'm ready for another adventure. Surprise me.", choice2Destination: 2
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
