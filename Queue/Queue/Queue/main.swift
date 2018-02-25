//
//  main.swift
//  Queue
//
//  Created by Bimonaretga on 2/25/18.
//  Copyright © 2018 moeCodes. All rights reserved.
//

import Foundation

print("Hello, World!")
var strQueue = Queue<String>()
strQueue.enqueue(element: "DickSauce")
strQueue.enqueue(element: "DuckSauce")
strQueue.enqueue(element: "Juice")

print(strQueue.front)
print(strQueue.dequeue())
print(strQueue.front)

var intQue = Queue<Int>()
intQue.enqueue(element: 2)
print(intQue.front)
intQue.enqueue(element: 4)
intQue.dequeue()
print(intQue.front)
