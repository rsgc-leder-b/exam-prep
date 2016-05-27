//
//  main.swift
//  Sounds Fishy
//
//  Created by Brendan Leder on 2016-05-27.
//  Copyright © 2016 Brendan Leder. All rights reserved.
//

var reading1 = 0
var reading2 = 0
var reading3 = 0
var reading4 = 0

while reading1 < 1 {
    print("Reading 1? ", terminator: "")
    if let input = readLine(stripNewline: true) {
        if let inputAsInt = Int(input) {
            reading1 = inputAsInt
        }
    }
}

while reading2 < 1 {
    print("Reading 2? ", terminator: "")
    if let input = readLine(stripNewline: true) {
        if let inputAsInt = Int(input) {
            reading2 = inputAsInt
        }
    }
}

while reading3 < 1 {
    print("Reading 3? ", terminator: "")
    if let input = readLine(stripNewline: true) {
        if let inputAsInt = Int(input) {
            reading3 = inputAsInt
        }
    }
}

while reading4 < 1 {
    print("Reading 4? ", terminator: "")
    if let input = readLine(stripNewline: true) {
        if let inputAsInt = Int(input) {
            reading4 = inputAsInt
        }
    }
}

if reading1 == reading2 && reading2 == reading3 && reading3 == reading4 {
    print("Fish At Constant Depth")
} else if reading1 > reading2 && reading2 > reading3 && reading3 > reading4 {
    print("Fish Diving")
} else if reading1 < reading2 && reading2 < reading3 && reading3 < reading4 {
    print("Fish Rising")
} else {
    print("No Fish")
}