//
//  SwiftBeacon+Beaconable.swift
//  SwiftBeacon
//
//  Created by Nazmi Yavuz on 9.12.2024.
//

import Foundation

extension SwiftBeacon: Beaconable {
    
    public func trace(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool = true,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let context = Context(file: file, function: function, line: line)
        handleLog(
            level: .trace,
            message: message(),
            shouldLogContext: shouldLogContext,
            context: context
        )
    }
    
    public func debug(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool = true,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let context = Context(file: file, function: function, line: line)
        handleLog(
            level: .debug,
            message: message(),
            shouldLogContext: shouldLogContext,
            context: context
        )
    }
    
    public func info(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool = true,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let context = Context(file: file, function: function, line: line)
        handleLog(
            level: .info,
            message: message(),
            shouldLogContext: shouldLogContext,
            context: context
        )
    }
    
    public func notice(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool = true,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let context = Context(file: file, function: function, line: line)
        handleLog(
            level: .notice,
            message: message(),
            shouldLogContext: shouldLogContext,
            context: context
        )
    }
    
    public func warning(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool = true,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let context = Context(file: file, function: function, line: line)
        handleLog(
            level: .warning,
            message: message(),
            shouldLogContext: shouldLogContext,
            context: context
        )
    }
    
    public func error(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool = true,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let context = Context(file: file, function: function, line: line)
        handleLog(
            level: .error,
            message: message(),
            shouldLogContext: shouldLogContext,
            context: context
        )
    }
    
    public func critical(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool = true,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let context = Context(file: file, function: function, line: line)
        handleLog(
            level: .critical,
            message: message(),
            shouldLogContext: shouldLogContext,
            context: context
        )
    }
    
    public func fault(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool = true,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let context = Context(file: file, function: function, line: line)
        handleLog(
            level: .fault,
            message: message(),
            shouldLogContext: shouldLogContext,
            context: context
        )
    }
    
}
