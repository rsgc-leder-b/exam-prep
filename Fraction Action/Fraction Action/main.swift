//
//  main.swift
//  Fraction Action
//
//  Created by Brendan Leder on 2016-06-09.
//  Copyright © 2016 Brendan Leder. All rights reserved.
//

var numerator = -1
var denominator = -1
var integer = 0
while numerator == -1 {
    print("Numerator?")
    if let input = readLine(stripNewline: true) {
        if let inputAsInt = Int(input) {
            if inputAsInt > -1 {
                numerator = inputAsInt
            }
        }
    }
}
while denominator == -1 {
    print("Denominator?")
    if let input = readLine(stripNewline: true) {
        if let inputAsInt = Int(input) {
            if inputAsInt > 0 {
                denominator = inputAsInt
            }
        }
    }
}
while numerator > denominator {
    numerator -= denominator
    integer++
}
var reduced = false
while !reduced {
    reduced = true
    for i in 2...max(denominator, numerator) {
        if denominator % i == 0 && numerator % i == 0 {
            denominator /= i
            numerator /= i
        }
    }
}
if numerator == 0 && integer == 0 {
    print(0)
} else {
    if numerator == 0 {
        print(integer)
    } else {
        if integer > 0 {
            print(integer, terminator: " ")
        }
        print(numerator, terminator: "/")
        print(denominator)
    }
}