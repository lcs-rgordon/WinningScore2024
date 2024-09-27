//
//  WinningScoreTests.swift
//  WinningScoreTests
//
//  Created by Russell Gordon on 2024-09-27.
//

import Testing

struct WinningScoreTests {

    @Test func typicalCaseScoreTestOne() {
        
        let result = calculateScore(threePointerCount: 10, fieldGoalCount: 10, freeThrowCount: 10)
        
        #expect(result == 60)
        
    }
    
    @Test func typicalCaseScoreTestTwo() {
        
        let result = calculateScore(threePointerCount: 3, fieldGoalCount: 1, freeThrowCount: 1)
        
        #expect(result == 12)
        
    }
    
    @Test func comparisonTestAWins() {
        
        let result = compareScores(teamAScore: 10, teamBScore: 5)
        
        #expect(result == "A")
        
    }

    @Test func comparisonTestBWins() {
        
        let result = compareScores(teamAScore: 5, teamBScore: 10)
        
        #expect(result == "B")
        
    }
    
    @Test func comparisonTestTie() {
        
        let result = compareScores(teamAScore: 10, teamBScore: 10)
        
        #expect(result == "T")
        
    }



}
