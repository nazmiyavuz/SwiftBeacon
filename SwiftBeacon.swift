//
//  SwiftBeacon.swift
//  Pods
//
//  Created by Nazmi Yavuz on 9.12.2024.
//

import Foundation

public struct SwiftBeacon {
    
    public init() {}

    public func verbose(_ message: @autoclosure () -> Any, shouldLogContext: Bool = true, file: String = #file,
                        line: Int = #line, function: String = #function) {
        let context = Context(file: file, function: function, line: line)
        handleLog(level: .verbose, message: message(), shouldLogContext: shouldLogContext, context: context)
    }
    
    public func info(_ message: @autoclosure () -> Any, shouldLogContext: Bool = true, file: String = #file,
                     line: Int = #line, function: String = #function) {
        let context = Context(file: file, function: function, line: line)
        handleLog(level: .info, message: message(), shouldLogContext: shouldLogContext, context: context)
    }
    
    public func debug(_ message: @autoclosure () -> Any, shouldLogContext: Bool = true, file: String = #file,
                      line: Int = #line, function: String = #function) {
        let context = Context(file: file, function: function, line: line)
        handleLog(level: .debug, message: message(), shouldLogContext: shouldLogContext, context: context)
    }
    
    public func warning(_ message: @autoclosure () -> Any, shouldLogContext: Bool = true, file: String = #file,
                        line: Int = #line, function: String = #function) {
        let context = Context(file: file, function: function, line: line)
        handleLog(level: .warning, message: message(), shouldLogContext: shouldLogContext, context: context)
    }
    
    public func error(_ message: @autoclosure () -> Any, shouldLogContext: Bool = true, file: String = #file,
                      line: Int = #line, function: String = #function) {
        let context = Context(file: file, function: function, line: line)
        handleLog(level: .error, message: message(), shouldLogContext: shouldLogContext, context: context)
    }
    
    fileprivate func handleLog(level: LogLevel, message: @autoclosure () -> Any,
                                      shouldLogContext: Bool, context: Context) {
        let logComponents = ["[\(level.prefix)", "\(message())]"]
        
        var fullString = logComponents.joined(separator: " ")
        if shouldLogContext {
            fullString += " → \(context.description)"
        }
        #if DEBUG
        switch level {
            
        case .verbose:
            print(fullString)
        case .info:
            print(fullString)
        case .debug:
            print(fullString)
        case .warning:
            print(fullString)
        case .error:
            print(fullString)
        }
        #endif
    }
}
