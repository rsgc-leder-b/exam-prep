//
//  main.swift
//  practice
//
//  Created by Brendan Leder on 2016-06-09.
//  Copyright © 2016 Brendan Leder. All rights reserved.
//

var run = true
var compNum = 0

if let input = readLine(stripNewline: true) {
    if let inputAsInt = Int(input) {
        if inputAsInt < 0 || inputAsInt > 10000 {
            run = false
        } else {
            compNum = inputAsInt
        }
    }
}

var CPU = ""
var POW = 0
var RAM = 0
var SPE = 0
var GIG = 0
var bakCPU = ""
var bakPOW = 0
var bakRAM = 0
var bakSPE = 0
var bakGIG = 0

var i = 0

while compNum > 0 && run {
    var tempCPU = ""
    var tempPOW = 0
    var tempRAM = 0
    var tempSPE = 0
    var tempGIG = 0
    compNum--
    if let input = readLine(stripNewline: true) {
        if input.characters.count > 8 {
            if input[input.startIndex.advancedBy(3)] == " " {
                var charCount = 0
                var searchNum = 0
                for char in input.characters {
                    charCount++
                    if charCount < 4 {
                        let ascii = String(char).unicodeScalars[String(char).unicodeScalars.startIndex].value
                        if ascii > 90 || ascii < 65 {
                            run = false
                        } else {
                            tempCPU += String(char)
                        }
                    } else {
                        if char == " " {
                            searchNum++
                        } else {
                            let ascii = String(char).unicodeScalars[String(char).unicodeScalars.startIndex].value
                            if ascii > 57 || ascii < 48 {
                                run = false
                            } else {
                                switch searchNum {
                                case 1:
                                    tempRAM *= 10
                                    tempRAM += Int(ascii) - 48
                                    break
                                case 2:
                                    tempSPE *= 10
                                    tempSPE += Int(ascii) - 48
                                    break
                                case 3:
                                    tempGIG *= 10
                                    tempGIG += Int(ascii) - 48
                                    break
                                default:
                                    run = false
                                    break
                                }
                            }
                        }
                    }
                }
                tempPOW = 2 * tempRAM + 3 * tempSPE + tempGIG
                if tempPOW > POW {
                    bakPOW = POW
                    bakCPU = CPU
                    bakSPE = SPE
                    bakGIG = GIG
                    bakRAM = RAM
                    POW = tempPOW
                    CPU = tempCPU
                    SPE = tempSPE
                    GIG = tempGIG
                    RAM = tempRAM
                } else if tempPOW > bakPOW {
                    bakPOW = tempPOW
                    bakCPU = tempCPU
                    bakSPE = tempSPE
                    bakGIG = tempGIG
                    bakRAM = tempRAM
                }
            } else {
                run = false
            }
        } else {
            run = false
        }
    }
    i++
}

if run {
    /*
    print(CPU, terminator: "")
    print(" ", terminator: "")
    print(RAM, terminator: "")
    print(" ", terminator: "")
    print(SPE, terminator: "")
    print(" ", terminator: "")
    print(GIG, terminator: "")
    print()
    */
    if CPU != "" {
        print(CPU)
    }
    if bakCPU != "" {
        print(bakCPU)
    }
} else {
    print("INVALID INPUT. ERROR")
}