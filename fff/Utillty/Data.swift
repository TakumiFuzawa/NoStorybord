//
//  Data.swift
//  fff
//
//  Created by Takumi Fuzawa on 2020/12/02.
//

import Foundation


struct CovidInfo: Codable {
    
    struct Total: Codable {
        var pcr: Int
        var hospitalize: Int
        var positive: Int
        var severe: Int
        var discharge: Int
        var death: Int
    }
}

