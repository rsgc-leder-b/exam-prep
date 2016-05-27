//
//  main.swift
//  Vote Count
//
//  Created by Brendan Leder on 2016-05-27.
//  Copyright © 2016 Brendan Leder. All rights reserved.
//

var totalVotes = 0

while totalVotes < 1 || totalVotes > 15 {
    print("How many votes? ", terminator: "")
    if let input = readLine(stripNewline: true) {
        if let intInput = Int(input) {
            totalVotes = intInput
        }
    }
}

var error = false
var a = 0
var b = 0

if let votes = readLine(stripNewline: true) {
    var voteCount = 0
        for char in votes.characters {
            voteCount++
            if char == "A" {
                a++
            } else if char == "B" {
                b++
            } else {
                error = true
            }
        }
    if voteCount != totalVotes {
        error = true
    }
}

if error {
    print("Error")
} else if a == b {
    print ("Tie")
} else if a > b {
    print ("A")
} else {
    print ("B")
}