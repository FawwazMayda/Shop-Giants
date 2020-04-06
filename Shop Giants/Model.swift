//
//  Model.swift
//  Shop Giants
//
//  Created by Muhammad Fawwaz Mayda on 06/04/20.
//  Copyright © 2020 David Gunawan. All rights reserved.
//

import Foundation

struct Category {
    let image : String
    let name : String
    let desc : String
    var product : [Product] {
        switch name {
        case "lessons":
            return self.loadWithRange(pref: "lessons", start: 1, end: 6)
        case "percussions":
            return self.loadWithRange(pref: "percussions", start: 1, end: 6)
        case "piano":
            return self.loadWithRange(pref: "piano", start: 1, end: 3)
        case "strings":
            return self.loadWithRange(pref: name, start: 1, end: 7)
        case "brass":
            return self.loadWithRange(pref: "brass", start: 1, end: 4)
        case "accesories":
            return self.loadWithRange(pref: name, start: 1, end: 12)
            
        default:
            return [Product]()
        }
    }
    
    func loadWithRange(pref:String,start:Int, end:Int)-> [Product]{
        var prod : [Product] = []
        for i in start...end {
            let new = Product(name: "\(pref)-\(i)", image: "\(pref)-\(i)", price: 10*i)
            prod.append(new)
        }
        return prod
    }
}

struct Product {
    let name : String
    let image : String
    let price : Int
}
