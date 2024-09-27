//
//  main.swift
//  WinningScore2024
//
//  Created by Russell Gordon on 2024-09-27.
//

import Foundation

func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        print(prompt)
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}

func calculateScore(threePointerCount: Int, fieldGoalCount: Int, freeThrowCount: Int) -> Int {
    return threePointerCount * 3 + fieldGoalCount * 2 + freeThrowCount
}

// Quick tests

// Expected return value: 60
print(calculateScore(threePointerCount: 10, fieldGoalCount: 10, freeThrowCount: 10))

// Expected return value: 12
print(calculateScore(threePointerCount: 3, fieldGoalCount: 1, freeThrowCount: 1))
