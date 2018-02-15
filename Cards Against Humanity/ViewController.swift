//
//  ViewController.swift
//  Cards Against Humanity
//
//  Created by Muhammad Ilham Dedi on 3/19/17.
//  Copyright © 2017 Muhammad Ilham Dedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordBlack: UILabel!
    var newBlack = "Black Deck"
    
    @IBOutlet weak var wordWhite: UILabel!
    var newWhite = "White Deck"
    
    let blackCards = ["And I would have gotten away with it, too, if it hadn’t been for ______!" , "He who controls ______ controls the world." , "I learned the hard way that you can’t cheer up a grieving friend with ______." , "In his new self-produced album, Kanye West raps over the sounds of ______." , "In its new tourism campaign, Detroit proudly proclaims that it has finally eliminated ______." , "In the distant future, historians will agree that ______ marked the beginning of America’s decline." , "Michael Bay’s new three-hour action epic pits ______ against the Transformers." , "My plan for world domination begins with ______." , "Next season on Man vs, Wild, Bear Grylls must survive the depths of the Amazon with only ______ and his wits." , "Science will never explain ______." , "Science will never explain the origin of ______." , "The CIA now interrogates enemy agents by repeatedly subjecting them to ______." , "The secret to a lasting marriage is communication, communication, and ______." , "The socialist governments of Scandinavia have declared that access to ______ is a basic human right." , "This season on Man vs. Wild, Bear Grylls must survive in the depths of the Amazon with only ______ and his wits." , "What brought the orgy to a grinding halt?" , "What’s the gift that keeps on giving?" , "I’m just gonna stay in tonight. You know, Netflix and __________." , "Don’t worry, Penny! Go Go Gadget __________!" , "This app is basically Tinder, but for __________." , "Nothing says 'I love you' like __________." , "You guys, you can buy __________ on the dark web." , "TRIGGER WARNING: __________."]
    
    
    let whiteCards = ["24-hour media coverage", "A beached whale." , "A bloody pacifier." , "A crappy little hand." , "A fat bald man from the internet." , "A low standard of living." , "A nuanced critique." , "A plunger to the face." , "A rival dojo." , "A smiling black man, a latina businesswoman, a cool asian, and some whites." , "A web of lies." , "A woman scorned." , "An atomic wedgie." , "An Etsy steampunk strap-on." , "An evil man in evil clothes." , "Apologizing." , "Appreciative snapping." ,  "Ashton Kutcher." ,  "Being a busy adult with many important things to do." , "Being a dinosaur." , "Blaxploitation." , "Bosnian chicken farmers." , "Carnies." , "Clams." , "Cutting." , "Dancing with a broom." , "Dorito breath." , "Eating an albino." , "Enormous Scandinavian women." , "Fabricating statistics." , "Finding a skeleton." , "Gandalf." , "Genetically engineered super-soldiers." , "George Clooney’s musk." , "Getting abducted by Peter Pan." , "Gladiatorial combat." , "Good grammar." , "Hipsters." , "Historical revisionism." , "Insatiable bloodlust." , "Jafar." , "Jean-Claude Van Damme in slow motion." , "Jean-Claude Van Damme." , "Just the tip." , "Leveling up." , "Mad hacky-sack skills." , "Media coverage." , "Medieval Times® Dinner & Tournament." , "Mom." , "Moral ambiguity." , "My machete." , "Neil Patrick Harris." , "NOOOOOOOOO!!!" , "Ominous background music." , "One thousand Slim Jims." , "Overpowering your father." , "Pistol-whipping a hostage." , "Quiche." , "Ripping into a man’s chest and pulling out his still-beating heart." , "Ryan Gosling riding in on a white horse." , "Salvia." , "Sanding off a man’s nose." , "Santa Claus." , "Savagely beating a mascot" , "Shaft." , "Slow motion." , "Space muffins." , "Statistically validated stereotypes." , "Stockholm syndrome" , "Sudden Poop Explosion Disease." , "Suicidal thoughts." , "The economy." , "The Fanta® girls." , "The gulags." , "The harsh light of day." , "The hiccups." , "The ooze" , "The shambling corpse of Larry King." , "This guy!" , "Tripping balls." , "Words, words, words.", "YouTube comments.", "Game of Thrones spoilers." , "A complete inability to understand anyone else’s perspective." , "Pooping while running at full speed." , "Cat massage." , "Getting teabagged by a fifth grader in Call of Duty." , "Matching with Mom on Tinder.", "Goats screaming like people." , "Pretending to be black." , "That thing on the Internet everyone’s talking about." , "My browser history." , "A man from Craigslist." , "A respectful discussion of race and gender on the Internet." , "Googling."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func shuffle(_ sender: UIButton) {
        
        print("the cards just shuffled")
        let blackTotal = blackCards.count
        let whiteTotal = whiteCards.count
        
        let blackIndex = Int(arc4random_uniform(UInt32(blackTotal)))
        let whiteIndex = Int(arc4random_uniform(UInt32(whiteTotal)))
        
        newBlack = blackCards[blackIndex]
        newWhite = whiteCards[whiteIndex]
        
        
        wordBlack.text = newBlack
        wordWhite.text = newWhite
    }
    
}

