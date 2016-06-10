//
//  main.swift
//  Rotating Letters
//
//  Created by Brendan Leder on 2016-05-31.
//  Copyright © 2016 Brendan Leder. All rights reserved.
//

func unicodeScalarCodePoint(characterString: String) -> UInt32
{
    let scalars = characterString.unicodeScalars
    return scalars[scalars.startIndex].value
}

var run = true
print ("BEGIN")
while run == true {
    print("Input word is? ", terminator: "")
    if let input = readLine(stripNewline: true) {
        var valid = true
        run = false
        for char in input.characters {
            let ascii = unicodeScalarCodePoint(String(char))
            if ascii > 64 && ascii < 91 {
                if ascii != 72 && ascii != 73 && ascii != 78 && ascii != 79 && ascii != 83 && ascii != 88 && ascii != 90 {
                    valid = false
                }
            } else {
                run = true
            }
        }
        if run == false {
            if valid == true {
                print("YES")
            } else {
                print("NO")
            }
        }
    }
}