//
//  Queue.swift
//  Queue
//
//  Created by Bimonaretga on 2/25/18.
//  Copyright © 2018 moeCodes. All rights reserved.
//

import Foundation

struct Queue<T> {
    private var array: [T] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    mutating func enqueue(element: T) {
        array.append(element)
    }
    
    mutating func dequeue() -> T? {
        if array.isEmpty {
            return nil
        } else {
            //print("removing the first element in the queue \(array.first)")
            return array.removeFirst()
        }
    }
    
    var front: T? {
        return array.first
    }
}
