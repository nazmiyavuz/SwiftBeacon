//
//  SwiftBeacon.swift
//  Pods
//
//  Created by Nazmi Yavuz on 9.12.2024.
//

import Foundation
import OSLog

/// A struct to log codes in the project.
public struct SwiftBeacon {
    
    /// Using your bundle identifier is a great way to provide a unique identifier.
    private var subsystem = Bundle.main.bundleIdentifier
    
    private var _logName: String? = nil
    
    /// A init function which can be used under some versions.
    ///
    /// under of (macOS 10.15, iOS 15.0, *)
    public init() {
        _logName = nil
    }
    
    /// A init function which can be used over some versions.
    ///
    /// over this versions:
    /// (macOS 10.15, iOS 15.0, *)
    @available(macOS 10.15, iOS 15.0, *)
    public init(logName: String? = nil) {
        _logName = logName
    }
    
    @available(macOS 10.15, iOS 15.0, *)
    private var logName: String {
        _logName ?? "SwiftBeacon"
    }
    
    @available(macOS 10.15, iOS 15.0, *)
    fileprivate var logger: Logger {
        .init(subsystem: subsystem ?? "", category: logName)
    }
    
    func handleLog(
        level: LogLevel,
        message: @autoclosure () -> Any,
        shouldLogContext: Bool,
        context: Context
    ) {
        let logComponents = ["[\(level.prefix)", "\(message())]"]
        
        var fullString = logComponents.joined(separator: " ")
        if shouldLogContext {
            fullString += " → \(context.description)"
        }
        #if DEBUG
        if #available (macOS 10.15, iOS 15.0, *) {
            handleLog(level: level, message: fullString)
        } else {
            print(fullString)
        }
        #endif
    }
    
    @available(macOS 10.15, iOS 15.0, *)
    func handleLog(
        level: LogLevel,
        message: String
    ) {
        #if DEBUG
        switch level {
        case .trace:    logger.trace("\(message)")
        case .debug:    logger.debug("\(message)")
        case .info:     logger.info("\(message)")
        case .notice:   logger.notice("\(message)")
        case .warning:  logger.warning("\(message)")
        case .error:    logger.error("\(message)")
        case .critical: logger.critical("\(message)")
        case .fault:    logger.fault("\(message)")
        }
        #endif
    }
}
