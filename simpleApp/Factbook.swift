//
//  Factbook.swift
//  simpleApp
//
//  Created by Nano on 30/07/2015.
//  Copyright (c) 2015 Self Taught iOS. All rights reserved.
//

import Foundation

struct FactBook {
    
    // create an array to store the following fun facts.
    
    let factsArray = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually made mostly of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "The state of Florida is bigger than England.",
        "Some penguins can leap 2-3 meters out of the water.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the earth when the Great Pyramid was being built." ]
    
    // create a new function to randomly generate fact from the factsArray
    
    
    func randomFact () -> String {
        
        // first we need to find the length of the array using .count method then convert it to UInt32
        // UInt32 is a type that need to pass into arc4random_uniform function
        var unsignedArrayCount = UInt32(factsArray.count)
        
        // arc4random_uniform is a standard function from apple Foundation framework
        // we pass unsignedArrayCount to the arc4random_uniform function
        // a random number will be generated
        
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        
        //finally we convert the unsignedRandomNumber into Int
        var randomNumber = Int(unsignedRandomNumber)
        
        //the function return a random generate array from factsArray.
        return factsArray[randomNumber]
    }
}