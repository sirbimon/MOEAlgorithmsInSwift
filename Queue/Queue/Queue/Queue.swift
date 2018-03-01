//
//  Queue.swift
//  Queue
//
//  Created by Bimonaretga on 2/25/18.
//  Copyright © 2018 moeCodes. All rights reserved.
//

import Foundation

struct Queue<T> {
    private var array: [T?] = []
    private var head = 0
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    mutating func enqueue(element: T) {
        array.append(element)
    }
    
    mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else { return nil }
        
        array[head] = nil
        head += 1
        
        let percentage = Double(head)/Double(array.count)
        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        
        return element
    }
    
    var front: T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
        
    }
}
