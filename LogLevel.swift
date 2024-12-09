//
//  LogLevel.swift
//  Pods
//
//  Created by Nazmi Yavuz on 9.12.2024.
//

import Foundation

enum LogLevel {
    case verbose
    case info
    case debug
    case warning
    case error
    
    var prefix: String {
        switch self {
        case .verbose: return "LOGGER.VERBOSE 💜"
        case .info:    return "LOGGER.INFO 💚"
        case .debug:   return "LOGGER.DEBUG 💙"
        case .warning: return "LOGGER.WARNING 🧡"
        case .error:   return "LOGGER.ERROR 💔"
        }
    }
}
