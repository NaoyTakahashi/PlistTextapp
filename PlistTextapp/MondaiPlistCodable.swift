//
//  MondaiPlistCodable.swift
//  PlistTextapp
//
//  Created by 高橋直也 on 2020/01/26.
//  Copyright © 2020 高橋直也. All rights reserved.
//

import Foundation

struct mondai:Codable {
    //let Root: Dictionary<String, Any>
    let Root: test
}

struct test {
    let 01: questionNumber
}

struct questionNumber:Codable {
    let Questionsentence: Dictionary<String,String>
    let Choices: Dictionary<String,[String]>
    let Correctanswer:  Dictionary<String,Int>
}
