//
//  MondaiPlistCodable.swift
//  PlistTextapp
//
//  Created by 高橋直也 on 2020/01/26.
//  Copyright © 2020 高橋直也. All rights reserved.
//

import Foundation

struct mondai: Codable {
    let Root: Array<number>
}

struct number: Codable {
    let Questionsentence: String
    let Choices: Array<String>
    let Correctanswer: Int
}

