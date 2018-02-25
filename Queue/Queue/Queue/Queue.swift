//
//  Queue.swift
//  Queue
//
//  Created by Bimonaretga on 2/25/18.
//  Copyright © 2018 moeCodes. All rights reserved.
//

import Foundation

struct Queue {
    private var array: [String] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    mutating func enqueue(element: String) {
        array.append(element)
    }
    
    mutating func dequeue() -> String? {
        if array.isEmpty {
            return nil
        } else {
            //print("removing the first element in the queue \(array.first)")
            return array.removeFirst()
        }
    }
    
    var front: String? {
        return array.first
    }
}
