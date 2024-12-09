//
//  Beaconable.swift
//  SwiftBeacon
//
//  Created by Nazmi Yavuz on 9.12.2024.
//

import Foundation

public protocol Beaconable {
    /// A function for logging in the `debug` level.
    /// - Parameters:
    ///   - message: @autoclosure to get any
    ///   - shouldLogContext: a boolean property which is `true` by default.
    ///   - file: the file name of the log
    ///   - line: the line number of the log
    ///   - function: the function name of the log
    func trace(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool,
        file: String,
        line: Int,
        function: String
    )
    
    /// A function for logging in the `debug` level.
    /// - Parameters:
    ///   - message: @autoclosure to get any
    ///   - shouldLogContext: a boolean property which is `true` by default.
    ///   - file: the file name of the log
    ///   - line: the line number of the log
    ///   - function: the function name of the log
    func debug(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool,
        file: String,
        line: Int,
        function: String
    )
    
    /// A function for logging in the `info` level.
    /// - Parameters:
    ///   - message: @autoclosure to get any
    ///   - shouldLogContext: a boolean property which is `true` by default.
    ///   - file: the file name of the log
    ///   - line: the line number of the log
    ///   - function: the function name of the log
    func info(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool,
        file: String,
        line: Int,
        function: String
    )
    
    /// A function for logging in the `default` level.
    /// - Parameters:
    ///   - message: @autoclosure to get any
    ///   - shouldLogContext: a boolean property which is `true` by default.
    ///   - file: the file name of the log
    ///   - line: the line number of the log
    ///   - function: the function name of the log
    func notice(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool,
        file: String,
        line: Int,
        function: String
    )
    
    /// A function for logging in the `error` level.
    /// - Parameters:
    ///   - message: @autoclosure to get any
    ///   - shouldLogContext: a boolean property which is `true` by default.
    ///   - file: the file name of the log
    ///   - line: the line number of the log
    ///   - function: the function name of the log
    func warning(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool,
        file: String,
        line: Int,
        function: String
    )
    
    /// A function for logging in the `error` level.
    /// - Parameters:
    ///   - message: @autoclosure to get any
    ///   - shouldLogContext: a boolean property which is `true` by default.
    ///   - file: the file name of the log
    ///   - line: the line number of the log
    ///   - function: the function name of the log
    func error(
    _ message: @autoclosure () -> Any,
    shouldLogContext: Bool,
    file: String,
    line: Int,
    function: String
    )
    
    /// A function for logging in the `fault` level.
    /// - Parameters:
    ///   - message: @autoclosure to get any
    ///   - shouldLogContext: a boolean property which is `true` by default.
    ///   - file: the file name of the log
    ///   - line: the line number of the log
    ///   - function: the function name of the log
    func critical(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool,
        file: String,
        line: Int,
        function: String
    )
    
    /// A function for logging in the `fault` level.
    /// - Parameters:
    ///   - message: @autoclosure to get any
    ///   - shouldLogContext: a boolean property which is `true` by default.
    ///   - file: the file name of the log
    ///   - line: the line number of the log
    ///   - function: the function name of the log
    func fault(
        _ message: @autoclosure () -> Any,
        shouldLogContext: Bool,
        file: String,
        line: Int,
        function: String
    )

}
