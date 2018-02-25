//
//  Stack.swift
//  Stack
//
//  Created by Bimonaretga on 2/24/18.
//  Copyright © 2018 moeCodes. All rights reserved.
//

import Foundation

 struct Stack<Element> {
    private var array: [Element] = []
    //implement push,
    mutating func push(element: Element) {
        array.append(element)
    }
    //implement pop
    mutating func pop() -> Element? {
        return array.popLast()
    }
    
    //implement peek
    mutating func peek() -> Element? {
        return array.last
    }
    
}
//implement description as a computed propery that conforms to customStringConvertible
// use the var description:String {return string}
extension Stack: CustomStringConvertible {
    var description: String {
        let topDivider = "----Stack----\n"
        let bottomDivider = "\n-------------\n"
        let stackedElements = array.map {"\($0)"}.reversed().joined(separator: "\n")
        return topDivider + stackedElements + bottomDivider
    }
}
