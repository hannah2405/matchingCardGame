//
//  CardModel.swift
//  MatchApp
//
//  Created by Hannah Kim on 12/30/21.
//

import Foundation

class CardModel {
    
    //get set of cards from view controller
    func getCards() -> [Card] {
        
        // declare an empty array to store cards
        var generatedCards = [Card]()
        
//        // randomly generate 8 pairs of cards
//        for _ in 1...8 {
//            // _ for any variable
//
//            //Generate a random number
//            let randomNumber = Int.random(in: 1...13)
//                //possibility of getting duplicates by randomly generating 1 thru 13
//
//            // create two new card objects
//            let cardOne = Card()
//            let cardTwo = Card()
//                // let (constant) is more efficient than var since it's not used
//
//            // set their image names
//            cardOne.imageName = "card\(randomNumber)"
//                //ex. card4 (image name)
//            cardTwo.imageName = "card\(randomNumber)"
//
//            //add them to the array
//            generatedCards += [cardOne, cardTwo]
//        }

        //randomly generate 8 pairs of SAME cards using while loop and check for duplicates
        var c = [Int]()
        
        //goes through an iteration first before checking condition
        repeat{
            let randomNumber = Int.random(in: 1...13)
            //check if a number already exists
            
            //create two new card objects
            let cardOne = Card()
            let cardTwo = Card()
            
            //contains gives true or false
           // if !c.contains(randomNumber) works
            if c.contains(randomNumber) != true{
                cardOne.imageName = "card\(randomNumber)"
                cardTwo.imageName = "card\(randomNumber)"
                generatedCards += [cardOne, cardTwo]
                c.append(randomNumber)
                print(randomNumber)
            }
        }while (c.count<8)
  
        // randomize the cards within the array
        generatedCards.shuffle()
        
        // return the array
        return generatedCards
    }
}
