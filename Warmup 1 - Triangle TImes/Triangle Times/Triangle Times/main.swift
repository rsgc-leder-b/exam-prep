//
//  main.swift
//  Triangle Times
//
//  Created by Brendan Leder on 2016-05-27.
//  Copyright © 2016 Brendan Leder. All rights reserved.
//

var properInput = false
var angle1 = 0
var angle2 = 0
var angle3 = 0

while !properInput {
    print("Angle 1? ", terminator: "")
    if let angleString = readLine(stripNewline: true) {
        if let angle = Int(angleString) {
            angle1 = angle
            properInput = true
        }
    }
}

properInput = false

while !properInput {
    print("Angle 2? ", terminator: "")
    if let angleString = readLine(stripNewline: true) {
        if let angle = Int(angleString) {
            properInput = true
            angle2 = angle
        }
    }
}

properInput = false

while !properInput {
    print("Angle 3? ", terminator: "")
    if let angleString = readLine(stripNewline: true) {
        if let angle = Int(angleString) {
            properInput = true
            angle3 = angle
        }
    }
}

if angle1 + angle2 + angle3 != 180 {
    print("Error")
} else if angle1 == angle2 && angle2 == angle3 {
    print("Equilateral")
} else if angle1 == angle2 || angle2 == angle3 || angle3 == angle1 {
    print("Isosceles")
} else {
    print("Scalene")
}