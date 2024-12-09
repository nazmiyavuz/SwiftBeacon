//
//  Context.swift
//  Pods
//
//  Created by Nazmi Yavuz on 9.12.2024.
//

import Foundation

struct Context {
    let file, function: String
    let line: Int
    var description: String {
        return "\((file as NSString).lastPathComponent):\(line) \(function)"
    }
}
