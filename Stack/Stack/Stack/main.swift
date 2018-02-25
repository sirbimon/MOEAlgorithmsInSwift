//
//  main.swift
//  Stack
//
//  Created by Bimonaretga on 2/24/18.
//  Copyright © 2018 moeCodes. All rights reserved.
//

import Foundation

print("Hello, World!")
var stringStack = Stack<String>()
//now, Generics cannot be infered. so you have to tell it you'll use it for strings.

stringStack.push(element: "Moe")
stringStack.push(element: "Jole")
stringStack.push(element: "Rumpty")
print(stringStack.description)

var intStack = Stack<Int>()
intStack.push(element: 1)
intStack.push(element: 2)
intStack.push(element: 3)
intStack.push(element: 4)
intStack.push(element: 5)

print(intStack.description)
intStack.pop()
print(intStack.description)


