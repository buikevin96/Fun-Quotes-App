//
//  FactModel.swift
//  FunFacts
//
//  Created by Kevin Bui on 4/13/16.
//  Copyright © 2016 Kevin Bui. All rights reserved.
//


import GameKit

struct FactModel {
    let quotes = ["Leave things better off than the way you found them",
        "The more you know, the more you grow, the further places you will grow",
        "The universe only rewards those who deserves it",
        "Live in the present. The future will naturally unfold with the actions you do in the present.",
        "It is important to experience painful situations and learn from them, rather than distract yourself with something else",
        "The time to learn is anytime you want to make the present better than the past",
        "Rich relationships lead to more than money, they lead you to success, fulfillment, and wealth"]
    
    func getRandomQuote() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(quotes.count)
        
        return quotes[randomNumber]
    }
}